import 'package:flutter/material.dart';

import '../../../../../../../../core/locale/app_localizations_helper.dart';
import '../../../extensions/string.dart';
import '../../../utils/url_launcher.dart';

class PoweredByWidget extends StatelessWidget {
  const PoweredByWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String url = 'https://www.atheerio.com/';

    return SizedBox(
      width: 225,
      child: ListTile(
        onTap: () async {
          UrlLauncher.open(url);
        },
        leading: Image.asset('images/atheerio.png', height: 25, width: 25),
        title: Text(
          Tr.of(context).poweredByAtheerio.toTitle(),
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 13,
            // fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
