import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../extensions/string.dart';
import '../../../locale/app_localizations_helper.dart';
import '../../../utils/constants.dart';

enum DataType { topics, materials, notifications, alerts, chapters }

class NoDataWidget extends StatelessWidget {
  final DataType dataType;
  const NoDataWidget({super.key, required this.dataType});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            _mapNoDataWidgetToImagePath(dataType: dataType),
            height: 200,
            width: 200,
          ),
          Gap(kMediumGap),
          Text(
            _mapNoDataWidgetToTitle(
              context: context,
              dataType: dataType,
            ).capitalizeFirstLetter(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _mapNoDataWidgetToImagePath({required DataType dataType}) {
    switch (dataType) {
      case DataType.topics:
        return 'assets/images/no-topics.png';
      case DataType.materials:
        return 'assets/images/no-materials.png';
      case DataType.notifications:
        return 'assets/images/empty-box.png';
      case DataType.chapters:
        return 'assets/images/empty-box.png';
      case DataType.alerts:
        return 'assets/images/empty-box.png';
    }
  }

  String _mapNoDataWidgetToTitle({
    required DataType dataType,
    required BuildContext context,
  }) {
    switch (dataType) {
      case DataType.materials:
        return Tr.of(context).noMaterials;
      case DataType.topics:
        return Tr.of(context).noTopics;
      default:
        return Tr.of(context).noData;
    }
  }
}
