import 'dart:developer';

import '../../../../core/injection/init_di.dart';
import '../../domain/entities/user_settings.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/local/settings_local_data_source.dart';
import '../mappers/settings_mapper.dart';
import '../models/user_settings_model.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSourceImpl _settingsLocalDataSource;

  SettingsRepositoryImpl({
    required this._settingsLocalDataSource,
  });

  @override
  Future<UserSettings> getUserSettings() async {
    try {
      return await _settingsLocalDataSource.getUserSettings();
    } catch (e) {
      log('Failed to get user settings from local data source: $e');
      rethrow;
    }
  }

  @override
  Future<void> saveUserSettings({required UserSettings settings}) async {
    try {
      final UserSettingsModel settingsModel = sl<SettingsMapper>().mapToModel(
        entity: settings,
      );
      await _settingsLocalDataSource.saveUserSettings(settings: settingsModel);
    } catch (e) {
      log('Failed to save user settings to local data source: $e');
      rethrow;
    }
  }
}