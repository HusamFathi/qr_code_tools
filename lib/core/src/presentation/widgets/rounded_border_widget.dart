import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class RoundedBorderWidget extends StatelessWidget {
  final Widget child;
  const RoundedBorderWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.all(Radius.circular(kRoundedCorners)),
      ),
      child: Padding(padding: const EdgeInsets.all(kTinyPadding), child: child),
    );
  }
}
