import 'dart:convert';
import 'dart:developer';

import 'package:encrypt_shared_preferences/provider.dart';

import '../../../../../core/exceptions/exceptions.dart';
import '../../../../../core/injection/init_di.dart';
import '../../../../../core/locale/app_language.dart';
import '../../models/user_settings_model.dart';

abstract class SettingsLocalDataSource {
  Future<UserSettingsModel> getUserSettings();

  Future<void> saveUserSettings({required UserSettingsModel settings});
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final EncryptedSharedPreferences sharedPreferences;

  SettingsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserSettingsModel> getUserSettings() {
    String? settingsDecoded = sharedPreferences.getString('settings');

    try {
      Map<String, dynamic> settingsMap = json.decode(settingsDecoded!);
      UserSettingsModel settings = UserSettingsModel.fromJson(settingsMap);
      return Future.value(settings);
    } catch (e) {
      ///get default settings
      return Future.value(
        UserSettingsModel(
          appTheme: 0,
          notificationTopics: [],
          appLanguage: sl<AppLanguage>()
              .getCurrentLanguage(code: null)
              .localCode,
        ),
      );
    }
  }

  @override
  Future<void> saveUserSettings({required UserSettingsModel settings}) async {
    log('saveUserSettings');
    Map<String, dynamic> settingsMap = settings.toJson();
    String settingsEncoded = jsonEncode(settingsMap);
    try {
      await sharedPreferences.setString('settings', settingsEncoded);
    } catch (e) {
      throw CacheException();
    }
  }
}
