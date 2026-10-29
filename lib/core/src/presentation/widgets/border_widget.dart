import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class OutlineBorderContainer extends StatelessWidget {
  final Widget child;
  final double borderWidth;
  final Color borderColor;
  final Color backgroundColor;

  const OutlineBorderContainer({
    super.key,
    required this.child,
    this.borderWidth = 1.0,
    this.borderColor = Colors.grey,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kSmallPadding), // Pad to accommodate border
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(
          kRoundedCorners,
        ), // Add some rounded corners
        border: Border.all(width: borderWidth, color: borderColor),
      ),
      child: child,
    );
  }
}
