import 'dart:developer';

import 'package:flutter/foundation.dart'; // For kDebugMode
import 'package:url_launcher/url_launcher.dart';

/// Defines the type of action the URL launcher should perform.
enum LaunchAction {
  /// Opens a web link (http, https).
  link,

  /// Composes an email (mailto:).
  email,

  /// Dials a phone number (tel:).
  phone,

  /// Composes an SMS message (sms:).
  sms,

  /// Opens a WhatsApp chat (https://wa.me/...).
  whatsapp,
}

/// A safe and robust utility class for launching URLs.
class UrlLauncher {
  /// Launches the given [target] string based on the specified [action].
  ///
  /// Returns `true` if the launch was successful, otherwise `false`.
  /// Provides detailed error logging in debug mode.
  static Future<bool> open(
    String target, {
    LaunchAction action = LaunchAction.link,
  }) async {
    // 1. Construct the correct URI based on the action type.
    final Uri? uri = _buildUri(target, action);

    // 2. If the URI is invalid or couldn't be built, fail gracefully.
    if (uri == null) {
      _logError(
        'Could not construct a valid URI from target: "$target" for action: $action',
      );
      return false;
    }

    try {
      // 3. Check if the OS can handle this URI.
      if (await canLaunchUrl(uri)) {
        // 4. Launch the URI, preferably in an external app for better reliability.
        await launchUrl(
          uri,
          // This is crucial for reliability, especially on Android.
          // It tells the OS to open the link in the default browser, phone app, etc.
          mode: LaunchMode.externalApplication,
        );
        return true;
      } else {
        _logError('The OS reported that it could not handle the URI: $uri');
        return false;
      }
    } catch (e, stackTrace) {
      _logError(
        'An unexpected error occurred while trying to launch URI: $uri',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Private helper to construct the URI with the correct scheme.
  static Uri? _buildUri(String target, LaunchAction action) {
    String url;
    switch (action) {
      case LaunchAction.link:
      case LaunchAction.whatsapp: // WhatsApp uses a standard https link
        url = target;
        break;
      case LaunchAction.email:
        // For email, we must add the 'mailto:' scheme.
        url = 'mailto:$target';
        break;
      case LaunchAction.phone:
        // For phone numbers, we must add the 'tel:' scheme.
        url = 'tel:$target';
        break;
      case LaunchAction.sms:
        // For SMS, we must add the 'sms:' scheme.
        url = 'sms:$target';
        break;
    }
    // Use tryParse for safety, as it returns null for invalid URLs instead of crashing.
    return Uri.tryParse(url);
  }

  /// Private helper for consistent logging.
  static void _logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    // Only log detailed errors in debug mode.
    if (kDebugMode) {
      log(
        'Error in UrlLauncher: $message',
        error: error,
        stackTrace: stackTrace,
        name: 'UrlLauncher',
      );
    }
  }
}
