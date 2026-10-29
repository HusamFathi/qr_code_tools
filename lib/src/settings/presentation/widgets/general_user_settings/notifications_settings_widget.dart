import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/src/presentation/widgets/popups/responsive_dialog_widget.dart';
import '../../../../../core/utils/constants.dart';
import '../../../domain/entities/user_settings.dart';

class NotificationsSettingsWidget extends StatelessWidget {
  final UserSettings settings;
  final void Function(UserSettings) onChanged;
  const NotificationsSettingsWidget({
    super.key,
    required this.settings,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    log(
      'NotificationsSettingsWidget: build called ${settings.notificationTopics}',
    );
    //     notification_topics": [
    // I/flutter (10089): ║                 invitations,
    // I/flutter (10089): ║                 invoices,
    // I/flutter (10089): ║                 content_generation
    // I/flutter (10089): ║         ]
    return ListTile(
      title: Text(Tr.of(context).notifications.capitalizeFirstLetter()),
      subtitle: Text(
        Tr.of(context).editNotificationPreferences.capitalizeFirstLetter(),
      ),
      leading: Icon(Icons.notifications),
      onTap: () {
        showAdaptiveDialog(
          context: context,
          builder: (context) {
            return ResponsiveDialogWidget(
              maxWidth: 800,
              minWidth: 400,
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: Text(
                  Tr.of(
                    context,
                  ).editNotificationPreferences.capitalizeFirstLetter(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kSmallPadding),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          SwitchListTile.adaptive(
                            subtitle: Text(
                              Tr.of(
                                context,
                              ).requiredFieldMessage.capitalizeFirstLetter(),
                            ),
                            title: Text(
                              Tr.of(
                                context,
                              ).contentGeneration.capitalizeFirstLetter(),
                            ),
                            value: settings.notificationTopics.contains(
                              'content_generation',
                            ),
                            onChanged: (value) {},
                            // (value) {
                            //   String invitationsTopic = 'invoices';
                            //   List<String> topics = settings.notificationTopics;
                            //   if (value) {
                            //     topics.add(invitationsTopic);
                            //   } else {
                            //     topics.remove(invitationsTopic);
                            //   }
                            //   onChanged(
                            //     settings.copyWith(notificationTopics: topics),
                            //   );
                            // },
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
