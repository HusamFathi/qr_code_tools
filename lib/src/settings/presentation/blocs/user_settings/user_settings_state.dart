part of 'user_settings_bloc.dart';

sealed class UserSettingsState extends Equatable {
  const UserSettingsState();
}

final class UserSettingsInitial extends UserSettingsState {
  @override
  List<Object?> get props => [];
}

///loading state
final class UserSettingsLoading extends UserSettingsState {
  @override
  List<Object?> get props => [];
}

/// loaded state status
enum UserSettingsLoadedStatus { initial, error, success, inProgress }

///loaded state
final class UserSettingsLoaded extends UserSettingsState {
  final UserSettings userSettings;
  final String? message;
  final UserSettingsLoadedStatus status;

  const UserSettingsLoaded({
    required this.status,
    this.message,
    required this.userSettings,
  });

  @override
  List<Object?> get props => [userSettings, status];

  /// create copy with method
  UserSettingsLoaded copyWith({
    UserSettings? userSettings,
    String? message,
    UserSettingsLoadedStatus? status,
  }) {
    return UserSettingsLoaded(
      userSettings: userSettings ?? this.userSettings,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}

///error state
final class UserSettingsError extends UserSettingsState {
  final String message;
  final int code;
  final void Function()? onRetry;

  const UserSettingsError({
    required this.message,
    required this.code,
    required this.onRetry,
  });

  @override
  List<Object?> get props => [message, onRetry, code];
}
