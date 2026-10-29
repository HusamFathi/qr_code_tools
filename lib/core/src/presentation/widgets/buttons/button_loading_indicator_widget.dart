import 'package:flutter/material.dart';

class ButtonLoadingIndicatorWidget extends StatelessWidget {
  final Color? color;
  const ButtonLoadingIndicatorWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(strokeWidth: 1.5, color: color),
    );
  }
}
