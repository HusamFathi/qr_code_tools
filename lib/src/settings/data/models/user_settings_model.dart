import 'dart:convert';
import 'dart:developer';

import '../../domain/entities/user_settings.dart';

class UserSettingsModel extends UserSettings {
  const UserSettingsModel({
    required super.appTheme,
    required super.appLanguage,
    required super.notificationTopics,
  });

  factory UserSettingsModel.fromJson(Map<String, dynamic> json) {
    final notificationTopicsRaw = json['notification_topics'];
    List<String> notificationTopics = []; // Default to empty list

    // Handle both correct (List) and incorrect (String) data formats
    if (notificationTopicsRaw is List) {
      notificationTopics = notificationTopicsRaw
          .map((e) => e.toString())
          .toList();
    } else if (notificationTopicsRaw is String &&
        notificationTopicsRaw.isNotEmpty) {
      try {
        final decoded = jsonDecode(notificationTopicsRaw);
        if (decoded is List) {
          notificationTopics = decoded.map((e) => e.toString()).toList();
        }
      } catch (e) {
        log(
          'Could not decode notification_topics string: "$notificationTopicsRaw". Error: $e',
        );
      }
    }

    final model = UserSettingsModel(
      appTheme: json['app_theme'],
      appLanguage: json['app_language'],
      notificationTopics: notificationTopics,
    );

    return model;
  }

  Map<String, dynamic> toJson() {
    return {
      'app_theme': appTheme,
      'app_language': appLanguage,
      'notification_topics': notificationTopics,
    };
  }
}
