import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../core/locale/app_localizations_helper.dart';
import '../../../utils/constants.dart';

class OrLineWidget extends StatelessWidget {
  const OrLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        const Gap(kSmallGap),
        Text(Tr.of(context).or),
        const Gap(kSmallGap),
        const Expanded(child: Divider()),
      ],
    );
  }
}
