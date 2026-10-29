import '../../../../core/src/domain/usecases/unit_base_usecase.dart';
import '../entities/user_settings.dart';
import '../repositories/settings_repository.dart';

class SaveUserSettingsUseCase extends UnitBaseUseCase<UserSettings> {
  final SettingsRepository _repository;

  SaveUserSettingsUseCase({required this._repository});

  @override
  Future<void> execute(UserSettings params) {
    return _repository.saveUserSettings(settings: params);
  }
}
