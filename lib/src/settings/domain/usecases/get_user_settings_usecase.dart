import '../../../../core/src/domain/entities/no_params.dart';
import '../../../../core/src/domain/usecases/base_usecase.dart';
import '../entities/user_settings.dart';
import '../repositories/settings_repository.dart';

class GetUserSettingsUseCase extends BaseUseCase<UserSettings, NoParams> {
  final SettingsRepository _repository;

  GetUserSettingsUseCase({required SettingsRepository repository})
    : _repository = repository;

  @override
  Future<UserSettings> execute(NoParams params) {
    return _repository.getUserSettings();
  }
}
