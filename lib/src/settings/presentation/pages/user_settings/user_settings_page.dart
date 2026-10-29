import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/src/presentation/widgets/app_version_widget.dart';
import '../../../../../core/src/presentation/widgets/loading/loading_dialog.dart';
import '../../../../../core/src/presentation/widgets/messengers/dialog_messenger_widget.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/url_launcher.dart';
import '../../../domain/entities/user_settings.dart';
import '../../blocs/user_settings/user_settings_bloc.dart';
import '../../widgets/general_user_settings/language_settings_widget.dart';
import '../../widgets/general_user_settings/notifications_settings_widget.dart';
import '../../widgets/general_user_settings/theme_settings_widget.dart';
import '../../widgets/settings_card_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserSettingsBloc userSettingsBloc = context.read<UserSettingsBloc>();
    return BlocProvider.value(
      value: userSettingsBloc,
      child: BlocConsumer<UserSettingsBloc, UserSettingsState>(
        listener: (context, state) async {
          if (state is UserSettingsLoaded &&
              state.status == UserSettingsLoadedStatus.inProgress) {
            showLoadingDialog(context);
          }
          if (state is UserSettingsLoaded &&
              state.status == UserSettingsLoadedStatus.success) {
            Navigator.of(context, rootNavigator: true).pop();

            DialogMessengerWidget.showSuccessesMessage(
              context: context,
              message: state.message!,
              useRootNavigator: true,
            );
          }
          if (state is UserSettingsLoaded &&
              state.status == UserSettingsLoadedStatus.error) {
            Navigator.of(context, rootNavigator: true).pop();

            DialogMessengerWidget.showErrorMessage(
              context: context,
              useRootNavigator: true,
              message: state.message!,
            );
          }
        },
        builder: (context, state) {
          if (state is UserSettingsLoaded) {
            UserSettings userSettings = state.userSettings;
            return Scaffold(
              appBar: AppBar(
                title: Text(Tr.of(context).settings.capitalizeFirstLetter()),
              ),
              body: SingleChildScrollView(
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 250,
                      maxWidth: 500,
                    ),
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.all(kSmallPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Tr.of(context).personal.capitalizeFirstLetter()),
                        const Gap(kMediumGap),
                        SettingsCardWidget(children: []),

                        const Gap(kMediumGap),
                        Text(Tr.of(context).general.capitalizeFirstLetter()),
                        const Gap(kMediumGap),
                        SettingsCardWidget(
                          children: [
                            ThemeSettingsWidget(
                              settings: userSettings,
                              userSettingsBloc: userSettingsBloc,
                              onChanged: (UserSettings userSettings) {
                                userSettingsBloc.add(
                                  UpdateAndSaveUserSettings(
                                    userSettings: userSettings,
                                  ),
                                );
                              },
                            ),
                            const Divider(),
                            LanguageSettingsWidget(
                              settings: userSettings,
                              onChanged: (UserSettings userSettings) {
                                userSettingsBloc.add(
                                  UpdateAndSaveUserSettings(
                                    userSettings: userSettings,
                                  ),
                                );
                              },
                            ),
                            const Divider(),
                            NotificationsSettingsWidget(
                              settings: userSettings,
                              onChanged: (UserSettings userSettings) {
                                userSettingsBloc.add(
                                  UpdateAndSaveUserSettings(
                                    userSettings: userSettings,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),

                        //* support section
                        const Gap(kMediumGap),
                        Text(Tr.of(context).aboutApp.capitalizeFirstLetter()),
                        const Gap(kMediumGap),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              kSmallPadding,
                              0,
                              kSmallPadding,
                            ),
                            child: Column(
                              children: [
                                // ListTile(
                                //   leading: Icon(
                                //     MdiIcons.whatsapp,
                                //   ),
                                //   onTap: () {
                                //     UrlLauncher.open(kWhatsappLink);
                                //   },
                                //   title: Text(
                                //     Tr.of(context)
                                //         .contactUsWithWhatApp
                                //         .capitalizeFirstLetter(),
                                //   ),
                                // ),
                                // const Gap(
                                //   kSmallGap,
                                // ),
                                // const Divider(),
                                ListTile(
                                  leading: const Icon(Icons.info),
                                  title: Text(
                                    Tr.of(context).sendFeedback
                                        .capitalizeFirstLetter(),
                                  ),
                                  onTap: () async {},
                                ),
                                const Gap(kSmallGap),
                                const Divider(),
                                ListTile(
                                  leading: const Icon(Icons.email),
                                  title: Text(
                                    Tr.of(context).contactUsWithEmail
                                        .capitalizeFirstLetter(),
                                  ),
                                  onTap: () async {
                                    await UrlLauncher.open(
                                      kSupportEmail,
                                      action: LaunchAction.email,
                                    );
                                  },
                                ),
                                const Gap(kSmallGap),
                                const Divider(),
                                ListTile(
                                  // leading: AppIconWidget(cornerRadius: 5),
                                  title: Text(
                                    Tr.of(context).appTitle.toTitle(),
                                  ),
                                  subtitle: AppVersionWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(kMediumGap),
                        Text(Tr.of(context).legal.capitalizeFirstLetter()),
                        const Gap(kMediumGap),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              kSmallPadding,
                              0,
                              kSmallPadding,
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.article_outlined),
                                  onTap: () async {
                                    await UrlLauncher.open(kTermsOfUseLink);
                                  },
                                  title: Text(
                                    Tr.of(context).termsOfUse
                                        .capitalizeFirstLetter(),
                                  ),
                                ),
                                const Gap(kSmallGap),
                                const Divider(),
                                ListTile(
                                  leading: const Icon(
                                    Icons.privacy_tip_outlined,
                                  ),
                                  title: Text(
                                    Tr.of(context).privacyPolicy
                                        .capitalizeFirstLetter(),
                                  ),
                                  onTap: () async {
                                    await UrlLauncher.open(kPrivacyPolicyLink);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
