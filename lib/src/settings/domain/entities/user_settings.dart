import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class UserSettings extends Equatable {
  final int appTheme;
  final String? appLanguage;
  final List<String> notificationTopics;
  // final Subscription subscription;
  const UserSettings({
    required this.appTheme,
    this.appLanguage,
    required this.notificationTopics,
  });

  @override
  List<Object?> get props => [appTheme, notificationTopics, appLanguage];

  /// Creates a copy of this Setting object with the specified properties overwritten.
  UserSettings copyWith({
    int? appTheme,
    List<String>? notificationTopics,
    String? appLanguage,
  }) {
    return UserSettings(
      appTheme: appTheme ?? this.appTheme,
      appLanguage: appLanguage ?? this.appLanguage,
      notificationTopics: notificationTopics ?? this.notificationTopics,
    );
  }

  /// Returns a string representation of this object.
  @override
  String toString() {
    return 'UserSettings { appTheme: $appTheme, appLanguage: $appLanguage, notificationTopics: $notificationTopics}';
  }

  bool isDark(context) => Theme.of(context).brightness == Brightness.dark;
}
