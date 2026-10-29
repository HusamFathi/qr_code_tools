part of 'user_settings_bloc.dart';

sealed class UserSettingsEvent extends Equatable {
  const UserSettingsEvent();
}

/// load user event
final class LoadUserSettings extends UserSettingsEvent {
  const LoadUserSettings();

  @override
  List<Object?> get props => [];
}

///update and save user settings event
final class UpdateAndSaveUserSettings extends UserSettingsEvent {
  final UserSettings userSettings;

  const UpdateAndSaveUserSettings({required this.userSettings});

  @override
  List<Object?> get props => [userSettings];
}
