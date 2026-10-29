import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// OnHover widget
///
/// - Default behaviour: does NOT change the UI.
/// - Provides callbacks for enter/exit and raw hover events:
/// - Optional hover visual effect (liftOnHover) is disabled by default so the UI is not affected.
///
/// Usage:
///   // simple: wrap any widget, no visual change, just callbacks
///   OnHoverWidget(
///     child: Card(...),
///     onHoverChanged: (hovering) => print('hover: $hovering'),
///   );
///
///   // builder mode: rebuild with hover state
///   OnHoverWidget.builder(
///     builder: (ctx, hovering) => AnimatedOpacity(
///       opacity: hovering ? 1.0 : 0.9,
///       duration: Duration(milliseconds: 150),
///       child: YourWidget(),
///     ),
///   );
class OnHoverWidget extends StatefulWidget {
  /// Child to render when not using builder mode.
  final Widget? child;

  /// Optional builder that receives hover state and returns a widget.
  /// If provided, builder mode is used and [child] is ignored.
  final Widget Function(BuildContext context, bool hovering)? builder;

  /// Called when hover state changes (enter/exit).
  final ValueChanged<bool>? onHoverChanged;

  /// Called on pointer hover events (gives the raw PointerHoverEvent).
  final ValueChanged<PointerHoverEvent>? onHoverEvent;

  /// If true, apply a small "lift" transform on hover. Default = false (no UI effect).
  final bool liftOnHover;

  /// Cursor to show while hovering.
  final MouseCursor cursor;

  /// Animation duration for internal AnimatedContainer when liftOnHover is true.
  final Duration duration;

  const OnHoverWidget({
    super.key,
    this.child,
    this.builder,
    this.onHoverChanged,
    this.onHoverEvent,
    this.liftOnHover = false,
    this.cursor = SystemMouseCursors.basic,
    this.duration = const Duration(milliseconds: 180),
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided',
       );

  /// Alternate constructor focused on builder-style usage.
  factory OnHoverWidget.builder({
    Key? key,
    required Widget Function(BuildContext, bool) builder,
    ValueChanged<bool>? onHoverChanged,
    ValueChanged<PointerHoverEvent>? onHoverEvent,
    bool liftOnHover = false,
    MouseCursor cursor = SystemMouseCursors.basic,
    Duration duration = const Duration(milliseconds: 180),
  }) => OnHoverWidget(
    key: key,
    builder: builder,
    onHoverChanged: onHoverChanged,
    onHoverEvent: onHoverEvent,
    liftOnHover: liftOnHover,
    cursor: cursor,
    duration: duration,
  );

  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool _hovering = false;

  bool get isHovering =>
      _hovering; // exposes current hover state if needed by tests/inspection

  void _handleEnter(PointerEnterEvent event) {
    setState(() => _hovering = true);
    widget.onHoverChanged?.call(true);
  }

  void _handleHover(PointerHoverEvent event) {
    widget.onHoverEvent?.call(event);
    // we do not toggle state on hover events; only on enter/exit
  }

  void _handleExit(PointerExitEvent event) {
    setState(() => _hovering = false);
    widget.onHoverChanged?.call(false);
  }

  @override
  Widget build(BuildContext context) {
    final content = widget.builder != null
        ? widget.builder!(context, _hovering)
        : widget.child!;

    if (!widget.liftOnHover) {
      // No visual effect: simply return MouseRegion wrapping content so it doesn't affect UI
      return MouseRegion(
        cursor: widget.cursor,
        onEnter: _handleEnter,
        onHover: _handleHover,
        onExit: _handleExit,
        child: content,
      );
    }

    // If liftOnHover is true, apply a subtle transform (default) with animation.
    // NOTE: Matrix4.translate is deprecated. Use Matrix4.translationValues to avoid deprecation warnings.
    final transform = _hovering
        ? Matrix4.translationValues(0, -4.0, 0)
        : Matrix4.identity();

    return MouseRegion(
      cursor: widget.cursor,
      onEnter: _handleEnter,
      onHover: _handleHover,
      onExit: _handleExit,
      child: AnimatedContainer(
        duration: widget.duration,
        transform: transform,
        child: content,
      ),
    );
  }
}
