import '../../../../core/utils/mapper.dart';
import '../../domain/entities/user_settings.dart';
import '../models/user_settings_model.dart';

class SettingsMapper extends DataMapper<UserSettings, UserSettingsModel> {
  @override
  UserSettings mapToEntity({required UserSettingsModel model}) {
    return UserSettings(
      appTheme: model.appTheme,
      appLanguage: model.appLanguage,
      notificationTopics: model.notificationTopics,
    );
  }

  @override
  UserSettingsModel mapToModel({required UserSettings entity}) {
    return UserSettingsModel(
      appTheme: entity.appTheme,
      appLanguage: entity.appLanguage,
      notificationTopics: entity.notificationTopics,
    );
  }
}
