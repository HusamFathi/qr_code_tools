import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScrollOnHoverOrPress extends StatefulWidget {
  final String text;
  const ScrollOnHoverOrPress({super.key, required this.text});

  @override
  State<ScrollOnHoverOrPress> createState() => _ScrollOnHoverOrPressState();
}

class _ScrollOnHoverOrPressState extends State<ScrollOnHoverOrPress> {
  final ScrollController _scrollController = ScrollController();
  bool isScrollingActive = false;
  Timer? _scrollTimer;

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void startScrolling() {
    if (_scrollTimer != null) return; // If already scrolling, do nothing
    _scrollTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_scrollController.hasClients) {
        if (_scrollController.offset <
            _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(
            _scrollController.offset + 0.5,
          ); // Scroll forward slowly
        } else {
          _scrollController.jumpTo(0); // Return to start when reaching the end
        }
      }
    });
  }

  void stopScrolling() {
    _scrollTimer?.cancel();
    _scrollTimer = null;
  }

  @override
  Widget build(BuildContext context) {
    return kIsWeb || !defaultTargetPlatform.isMobile
        ? MouseRegion(
            onEnter: (_) {
              setState(() => isScrollingActive = true);
              startScrolling();
            },
            onExit: (_) {
              setState(() => isScrollingActive = false);
              stopScrolling();
            },
            child: buildScrollView(),
          )
        : GestureDetector(
            onLongPressStart: (_) {
              setState(() => isScrollingActive = true);
              startScrolling();
            },
            onLongPressEnd: (_) {
              setState(() => isScrollingActive = false);
              stopScrolling();
            },
            child: buildScrollView(),
          );
  }

  Widget buildScrollView() {
    return Center(
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Text(widget.text, maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}

extension TargetPlatformExt on TargetPlatform {
  bool get isMobile =>
      this == TargetPlatform.iOS || this == TargetPlatform.android;
}
