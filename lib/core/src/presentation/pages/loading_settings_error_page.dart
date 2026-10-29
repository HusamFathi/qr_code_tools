import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/constants.dart';

class LoadingSettingsErrorPage extends StatelessWidget {
  final void Function() onRetry;
  const LoadingSettingsErrorPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.signal_wifi_off, size: 300, color: Colors.red),
              Gap(kLargeGap),
              FilledButton(
                onPressed: onRetry,
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
