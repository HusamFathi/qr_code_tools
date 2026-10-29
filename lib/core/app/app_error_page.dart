import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../extensions/string.dart';
import '../locale/app_localizations_helper.dart';
import '../utils/constants.dart';

class AppErrorPage extends StatelessWidget {
  final String error;
  final String stack;

  const AppErrorPage({super.key, required this.error, required this.stack});

  @override
  Widget build(BuildContext context) {
    log('AppErrorPage: $error\n$stack');
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(kMediumPadding),
              child: kDebugMode
                  ? SelectableText(
                      '⚠️\n$error\n$stack',
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      '⚠️\n${Tr.of(context).unKnownErrorMessage.capitalizeFirstLetter()}',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Tr.of(context).sorryAppFacingIssue.capitalizeFirstLetter(),
              textAlign: TextAlign.center,
            ),
            const Gap(kMediumGap),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: kSupportEmail,
                    );
                    if (await canLaunchUrl(emailLaunchUri)) {
                      await launchUrl(emailLaunchUri);
                    } else {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              Tr.of(context).unKnownErrorMessage
                                  .capitalizeFirstLetter(),
                            ),
                          ),
                        );
                      }
                    }
                  },
                  child: Text(Tr.of(context).contactUs.capitalizeFirstLetter()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
