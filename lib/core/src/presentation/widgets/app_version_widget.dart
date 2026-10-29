import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:qr_code_tools/core/extensions/string.dart';

import '../../../locale/app_localizations_helper.dart';

class AppVersionWidget extends StatefulWidget {
  const AppVersionWidget({super.key});

  @override
  State<AppVersionWidget> createState() => _AppVersionWidgetState();
}

class _AppVersionWidgetState extends State<AppVersionWidget> {
  late Future<PackageInfo> _packageInfoFuture;

  @override
  void initState() {
    super.initState();
    _packageInfoFuture = PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: _packageInfoFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final packageInfo = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: AutoSizeText(
              Tr.of(context).versionInfo(packageInfo.version).toTitle(),
              maxFontSize: 12,
              minFontSize: 6,
            ),
          );
        } else {
          // Return an empty widget if data is not yet available or if there's an error.
          // This effectively hides the widget until the version is fetched.
          return const SizedBox.shrink();
        }
      },
    );
  }
}
