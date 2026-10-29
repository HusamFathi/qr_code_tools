import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'account'**
  String get account;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'skillably'**
  String get appTitle;

  /// No description provided for @byte.
  ///
  /// In en, this message translates to:
  /// **'byte'**
  String get byte;

  /// No description provided for @chapters.
  ///
  /// In en, this message translates to:
  /// **'chapters'**
  String get chapters;

  /// No description provided for @contentGeneration.
  ///
  /// In en, this message translates to:
  /// **'content generation'**
  String get contentGeneration;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'dark'**
  String get dark;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'email'**
  String get email;

  /// No description provided for @noTopics.
  ///
  /// In en, this message translates to:
  /// **'the time is yours \n no study topics have been created yet.'**
  String get noTopics;

  /// No description provided for @errorGettingGoogleTokenMessage.
  ///
  /// In en, this message translates to:
  /// **'error getting google token'**
  String get errorGettingGoogleTokenMessage;

  /// No description provided for @exabyte.
  ///
  /// In en, this message translates to:
  /// **'exabyte'**
  String get exabyte;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'chat'**
  String get chat;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'message'**
  String get message;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'history'**
  String get history;

  /// No description provided for @gigabyte.
  ///
  /// In en, this message translates to:
  /// **'gigabyte'**
  String get gigabyte;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'google'**
  String get google;

  /// No description provided for @kilobyte.
  ///
  /// In en, this message translates to:
  /// **'kilobyte'**
  String get kilobyte;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'light'**
  String get light;

  /// No description provided for @megabyte.
  ///
  /// In en, this message translates to:
  /// **'megabyte'**
  String get megabyte;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'ok'**
  String get ok;

  /// No description provided for @petabyte.
  ///
  /// In en, this message translates to:
  /// **'petabyte'**
  String get petabyte;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'privacy policy'**
  String get privacyPolicy;

  /// No description provided for @requiredFieldMessage.
  ///
  /// In en, this message translates to:
  /// **'this field is required'**
  String get requiredFieldMessage;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'save'**
  String get save;

  /// No description provided for @syncWithSystem.
  ///
  /// In en, this message translates to:
  /// **'sync with system'**
  String get syncWithSystem;

  /// No description provided for @terabyte.
  ///
  /// In en, this message translates to:
  /// **'terabyte'**
  String get terabyte;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'terms of use'**
  String get termsOfUse;

  /// No description provided for @yottabyte.
  ///
  /// In en, this message translates to:
  /// **'yottabyte'**
  String get yottabyte;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'profile'**
  String get profile;

  /// No description provided for @topics.
  ///
  /// In en, this message translates to:
  /// **'topics'**
  String get topics;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'settings'**
  String get settings;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'home'**
  String get home;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'apply'**
  String get apply;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'content'**
  String get content;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'contact us'**
  String get contactUs;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'send feedback'**
  String get sendFeedback;

  /// No description provided for @contactUsWithEmail.
  ///
  /// In en, this message translates to:
  /// **'contact us with email'**
  String get contactUsWithEmail;

  /// No description provided for @sorryAppFacingIssue.
  ///
  /// In en, this message translates to:
  /// **'sorry, the app is currently facing an issue. this problem is likely from our server or outside the developer\'s control.'**
  String get sorryAppFacingIssue;

  /// No description provided for @loadingMessage.
  ///
  /// In en, this message translates to:
  /// **'loading, please wait...'**
  String get loadingMessage;

  /// No description provided for @confirmDeletionAction.
  ///
  /// In en, this message translates to:
  /// **'confirm deletion'**
  String get confirmDeletionAction;

  /// No description provided for @confirmThisActionMessage.
  ///
  /// In en, this message translates to:
  /// **'are you sure you want to perform this action? this cannot be undone.'**
  String get confirmThisActionMessage;

  /// No description provided for @discard.
  ///
  /// In en, this message translates to:
  /// **'discard'**
  String get discard;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'delete'**
  String get delete;

  /// No description provided for @doYouWantToContinue.
  ///
  /// In en, this message translates to:
  /// **'do you want to continue?'**
  String get doYouWantToContinue;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'retry'**
  String get retry;

  /// No description provided for @errorCode.
  ///
  /// In en, this message translates to:
  /// **'error code: {code}'**
  String errorCode(Object code);

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'no data to show.'**
  String get noData;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @poweredByAtheerio.
  ///
  /// In en, this message translates to:
  /// **'powered by atheerio'**
  String get poweredByAtheerio;

  /// No description provided for @reCaptchaMessage.
  ///
  /// In en, this message translates to:
  /// **'this site is protected by recaptcha and the google'**
  String get reCaptchaMessage;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @badRequestException.
  ///
  /// In en, this message translates to:
  /// **'bad request'**
  String get badRequestException;

  /// No description provided for @netWorkConnectionErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'no internet connection'**
  String get netWorkConnectionErrorMessage;

  /// No description provided for @sessionExpiredFailureMessage.
  ///
  /// In en, this message translates to:
  /// **'your session has expired, please log in again'**
  String get sessionExpiredFailureMessage;

  /// No description provided for @paymentRequiredFailureMessage.
  ///
  /// In en, this message translates to:
  /// **'payment required'**
  String get paymentRequiredFailureMessage;

  /// No description provided for @forbiddenFailureMessage.
  ///
  /// In en, this message translates to:
  /// **'you do not have permission to perform this action'**
  String get forbiddenFailureMessage;

  /// No description provided for @cacheFailure.
  ///
  /// In en, this message translates to:
  /// **'cache failure'**
  String get cacheFailure;

  /// No description provided for @metaAuthErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'meta authentication error'**
  String get metaAuthErrorMessage;

  /// No description provided for @unKnownErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'an unknown error occurred'**
  String get unKnownErrorMessage;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'optional'**
  String get optional;

  /// No description provided for @youChangesWillBeLost.
  ///
  /// In en, this message translates to:
  /// **'your changes will be lost'**
  String get youChangesWillBeLost;

  /// No description provided for @versionInfo.
  ///
  /// In en, this message translates to:
  /// **'version {version}'**
  String versionInfo(Object version);

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'general'**
  String get general;

  /// No description provided for @appTheme.
  ///
  /// In en, this message translates to:
  /// **'app theme'**
  String get appTheme;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'language'**
  String get language;

  /// No description provided for @editNotificationPreferences.
  ///
  /// In en, this message translates to:
  /// **'edit notification preferences'**
  String get editNotificationPreferences;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'cancel'**
  String get cancel;

  /// No description provided for @legal.
  ///
  /// In en, this message translates to:
  /// **'legal'**
  String get legal;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'choose language'**
  String get chooseLanguage;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'notifications'**
  String get notifications;

  /// No description provided for @settingsUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'settings updated successfully.'**
  String get settingsUpdatedSuccessfully;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'confirm'**
  String get confirm;

  /// No description provided for @zettabyte.
  ///
  /// In en, this message translates to:
  /// **'zettabyte'**
  String get zettabyte;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'invoices'**
  String get invoices;

  /// No description provided for @personal.
  ///
  /// In en, this message translates to:
  /// **'personal'**
  String get personal;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'subscription'**
  String get subscription;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'about app'**
  String get aboutApp;

  /// No description provided for @materials.
  ///
  /// In en, this message translates to:
  /// **'materials'**
  String get materials;

  /// No description provided for @noMaterials.
  ///
  /// In en, this message translates to:
  /// **'no materials uploaded yet!\nYou need at least one material to study.'**
  String get noMaterials;

  /// No description provided for @authFlowConflictFailureMessage.
  ///
  /// In en, this message translates to:
  /// **'there is a conflict with the current authentication flow.'**
  String get authFlowConflictFailureMessage;

  /// No description provided for @emailVerificationRequiredFailureMessage.
  ///
  /// In en, this message translates to:
  /// **'email verification is required to continue.'**
  String get emailVerificationRequiredFailureMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
