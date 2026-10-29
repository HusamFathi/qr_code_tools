import 'dart:developer';

import '../../src/settings/domain/entities/user_settings.dart';

class GlobalSettingsService {
  // Your service methods and properties go here
  UserSettings? userSettings;

  void updateUserSettings({required UserSettings newUserSettings}) {
    log('Updating user settings: $newUserSettings');
    userSettings = newUserSettings;
  }
}
