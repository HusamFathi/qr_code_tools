#!/usr/bin/env python3
"""
clean_arb.py

Finds unused keys in ARB files by scanning Dart source code,
and removes them (including metadata keys like @key).

Features:
- Reads l10n configuration or auto-detects .arb files in lib/l10n/
- Searches all .dart files (excluding generated l10n files)
- Matches identifier patterns like Tr.current.<key>, Tr.of(context).<key>,
  or any general Dart symbol usage: \b<key>\b
- Supports dry-run mode (--dry-run) to preview deletions without modifying files
- Preserves JSON formatting with 2 spaces indentation
"""

import argparse
import json
import os
import re
import sys
from typing import Dict, List, Set, Tuple


def get_default_arb_dir(project_root: str) -> str:
    l10n_yaml = os.path.join(project_root, "l10n.yaml")
    if os.path.isfile(l10n_yaml):
        try:
            with open(l10n_yaml, "r", encoding="utf-8") as f:
                for line in f:
                    match = re.match(r"^\s*arb-dir\s*:\s*(.+)$", line)
                    if match:
                        arb_dir = match.group(1).strip().strip("'\"")
                        full_dir = os.path.join(project_root, arb_dir)
                        if os.path.isdir(full_dir):
                            return full_dir
        except Exception:
            pass
    fallback = os.path.join(project_root, "lib", "l10n")
    return fallback


def find_arb_files(arb_dir: str) -> List[str]:
    if not os.path.isdir(arb_dir):
        return []
    return [
        os.path.join(arb_dir, f)
        for f in os.listdir(arb_dir)
        if f.endswith(".arb") and not f.startswith(".")
    ]


def find_dart_files(project_root: str) -> List[str]:
    dart_files = []
    # Directories to scan
    scan_dirs = ["lib", "test"]
    for d in scan_dirs:
        dir_path = os.path.join(project_root, d)
        if not os.path.isdir(dir_path):
            continue
        for root, _, files in os.walk(dir_path):
            for file in files:
                if file.endswith(".dart"):
                    # Exclude auto-generated localization files
                    if file.startswith("app_localizations"):
                        continue
                    dart_files.append(os.path.join(root, file))
    return dart_files


def load_codebase(dart_files: List[str]) -> str:
    content_list = []
    for path in dart_files:
        try:
            with open(path, "r", encoding="utf-8", errors="ignore") as f:
                content_list.append(f.read())
        except Exception as e:
            print(f"Warning: Failed to read {path}: {e}", file=sys.stderr)
    return "\n".join(content_list)


def extract_keys(arb_path: str) -> Tuple[Dict, List[str]]:
    with open(arb_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    # Keys excluding metadata entries that start with @
    message_keys = [k for k in data.keys() if not k.startswith("@")]
    return data, message_keys


def clean_arb_file(arb_path: str, unused_keys: Set[str], dry_run: bool = False) -> int:
    with open(arb_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    keys_to_delete = set()
    for k in unused_keys:
        if k in data:
            keys_to_delete.add(k)
        at_k = f"@{k}"
        if at_k in data:
            keys_to_delete.add(at_k)

    if not keys_to_delete:
        return 0

    new_data = {k: v for k, v in data.items() if k not in keys_to_delete}

    if not dry_run:
        with open(arb_path, "w", encoding="utf-8") as f:
            json.dump(new_data, f, ensure_ascii=False, indent=2)
            f.write("\n")

    return len([k for k in keys_to_delete if not k.startswith("@")])


def main():
    parser = argparse.ArgumentParser(
        description="Remove unused localization keys from ARB files."
    )
    parser.add_argument(
        "--root",
        default=os.getcwd(),
        help="Project root directory (defaults to current directory)",
    )
    parser.add_argument(
        "--arb-dir",
        default=None,
        help="Path to directory containing .arb files (defaults to arb-dir from l10n.yaml or lib/l10n)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Simulate the cleanup without modifying any files",
    )
    args = parser.parse_args()

    project_root = os.path.abspath(args.root)
    arb_dir = (
        os.path.abspath(args.arb_dir)
        if args.arb_dir
        else get_default_arb_dir(project_root)
    )

    arb_files = find_arb_files(arb_dir)
    if not arb_files:
        print(f"Error: No .arb files found in '{arb_dir}'", file=sys.stderr)
        sys.exit(1)

    dart_files = find_dart_files(project_root)
    if not dart_files:
        print(f"Error: No .dart files found in '{project_root}'", file=sys.stderr)
        sys.exit(1)

    print(f"Project root: {project_root}")
    print(f"ARB directory: {arb_dir}")
    print(f"Found {len(arb_files)} ARB file(s) and {len(dart_files)} Dart file(s).")
    print(f"Mode: {'DRY RUN (no files modified)' if args.dry_run else 'ACTIVE (files will be updated)'}\n")

    codebase = load_codebase(dart_files)

    # Collect all unique message keys across all ARB files
    all_keys = set()
    for af in arb_files:
        _, keys = extract_keys(af)
        all_keys.update(keys)

    print(f"Total unique translation keys in ARB files: {len(all_keys)}")

    # Check which keys are unused across the codebase
    unused_keys = set()
    used_keys = set()
    for key in sorted(all_keys):
        pattern = r"\b" + re.escape(key) + r"\b"
        if re.search(pattern, codebase):
            used_keys.add(key)
        else:
            unused_keys.add(key)

    print(f"Used keys: {len(used_keys)}")
    print(f"Unused keys to remove: {len(unused_keys)}\n")

    if unused_keys:
        print("List of unused keys:")
        for idx, k in enumerate(sorted(unused_keys), start=1):
            print(f"  {idx}. {k}")
        print()

    # Process each ARB file
    for af in sorted(arb_files):
        filename = os.path.basename(af)
        count = clean_arb_file(af, unused_keys, dry_run=args.dry_run)
        action_verb = "Would remove" if args.dry_run else "Removed"
        print(f"[{filename}]: {action_verb} {count} unused key(s).")

    print("\nDone!")


if __name__ == "__main__":
    main()

