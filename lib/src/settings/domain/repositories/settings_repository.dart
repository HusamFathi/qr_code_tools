import '../entities/user_settings.dart';

abstract class SettingsRepository {
  Future<UserSettings> getUserSettings();

  Future<void> saveUserSettings({required UserSettings settings});
}
