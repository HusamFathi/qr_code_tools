import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  const AppCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      //rounded corner
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRoundedCorners),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 12,

      child: child,
    );
  }
}
