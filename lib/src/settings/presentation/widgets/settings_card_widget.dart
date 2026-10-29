import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class SettingsCardWidget extends StatelessWidget {
  final List<Widget> children;
  const SettingsCardWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, kSmallPadding, 0, kSmallPadding),
        child: Column(children: children),
      ),
    );
  }
}
