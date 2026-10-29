import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;
import 'package:flutter/material.dart';

/// Enhanced, reusable category/section title widget.
///
/// Includes a ListTile design for better alignment and spacing.
class CategoryTitle extends StatelessWidget {
  const CategoryTitle(
    this.title, {
    super.key,
    this.leading,
    this.trailing,
    this.showDivider = true,
    this.padding,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final bool showDivider;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: leading,
          title: AutoSizeText(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: trailing,
        ),
        if (showDivider) const Divider(),
      ],
    );
  }
}
