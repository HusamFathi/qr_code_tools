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

  /// No description provided for @askToVerifyEmailFirst.
  ///
  /// In en, this message translates to:
  /// **'ask to verify email first'**
  String get askToVerifyEmailFirst;

  /// No description provided for @askUserToCompleteTheirProfile.
  ///
  /// In en, this message translates to:
  /// **'please complete your profile to continue'**
  String get askUserToCompleteTheirProfile;

  /// No description provided for @bioMessage.
  ///
  /// In en, this message translates to:
  /// **'tell us a bit about yourself'**
  String get bioMessage;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'birthday'**
  String get birthday;

  /// No description provided for @byte.
  ///
  /// In en, this message translates to:
  /// **'byte'**
  String get byte;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'change password'**
  String get changePassword;

  /// No description provided for @checkYourEmailInbox.
  ///
  /// In en, this message translates to:
  /// **'check your email inbox'**
  String get checkYourEmailInbox;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'country'**
  String get country;

  /// No description provided for @chapters.
  ///
  /// In en, this message translates to:
  /// **'chapters'**
  String get chapters;

  /// No description provided for @lessons.
  ///
  /// In en, this message translates to:
  /// **'lessons'**
  String get lessons;

  /// No description provided for @expiredAt.
  ///
  /// In en, this message translates to:
  /// **'expired at'**
  String get expiredAt;

  /// No description provided for @contentGeneration.
  ///
  /// In en, this message translates to:
  /// **'content generation'**
  String get contentGeneration;

  /// No description provided for @createProfile.
  ///
  /// In en, this message translates to:
  /// **'create profile'**
  String get createProfile;

  /// No description provided for @allowPermission.
  ///
  /// In en, this message translates to:
  /// **'allow permission'**
  String get allowPermission;

  /// No description provided for @finishedQuizMessage.
  ///
  /// In en, this message translates to:
  /// **'great work - you answered every question. Keep the momentum going and take on your next lesson.'**
  String get finishedQuizMessage;

  /// No description provided for @finishedQuizTitle.
  ///
  /// In en, this message translates to:
  /// **'quiz complete!'**
  String get finishedQuizTitle;

  /// No description provided for @backToLessons.
  ///
  /// In en, this message translates to:
  /// **'Back to lessons'**
  String get backToLessons;

  /// No description provided for @startQuiz.
  ///
  /// In en, this message translates to:
  /// **'start quiz'**
  String get startQuiz;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'dark'**
  String get dark;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'excellent'**
  String get excellent;

  /// No description provided for @notQuite.
  ///
  /// In en, this message translates to:
  /// **'not quite!'**
  String get notQuite;

  /// No description provided for @check.
  ///
  /// In en, this message translates to:
  /// **'check'**
  String get check;

  /// No description provided for @kTrue.
  ///
  /// In en, this message translates to:
  /// **'true'**
  String get kTrue;

  /// No description provided for @kFalse.
  ///
  /// In en, this message translates to:
  /// **'false'**
  String get kFalse;

  /// No description provided for @updateTopic.
  ///
  /// In en, this message translates to:
  /// **'update topic'**
  String get updateTopic;

  /// No description provided for @enterTopicNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., \'these are the notes for my machine learning topic\''**
  String get enterTopicNotesHint;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'email'**
  String get email;

  /// No description provided for @deleteTopic.
  ///
  /// In en, this message translates to:
  /// **'delete topic'**
  String get deleteTopic;

  /// No description provided for @chapter.
  ///
  /// In en, this message translates to:
  /// **'chapter'**
  String get chapter;

  /// No description provided for @file.
  ///
  /// In en, this message translates to:
  /// **'file'**
  String get file;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'upload'**
  String get upload;

  /// No description provided for @noTopics.
  ///
  /// In en, this message translates to:
  /// **'the time is yours \n no study topics have been created yet.'**
  String get noTopics;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'notes'**
  String get notes;

  /// No description provided for @selectMaterials.
  ///
  /// In en, this message translates to:
  /// **'select materials'**
  String get selectMaterials;

  /// No description provided for @enterTopicNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., \'introduction to machine learning\''**
  String get enterTopicNameHint;

  /// No description provided for @topicName.
  ///
  /// In en, this message translates to:
  /// **'topic name'**
  String get topicName;

  /// No description provided for @topicNameDescription.
  ///
  /// In en, this message translates to:
  /// **'enter a descriptive name for your topic to clarify the material you want to study.'**
  String get topicNameDescription;

  /// No description provided for @errorGettingGoogleTokenMessage.
  ///
  /// In en, this message translates to:
  /// **'error getting google token'**
  String get errorGettingGoogleTokenMessage;

  /// No description provided for @errorSendingEmail.
  ///
  /// In en, this message translates to:
  /// **'error sending email'**
  String get errorSendingEmail;

  /// No description provided for @exabyte.
  ///
  /// In en, this message translates to:
  /// **'exabyte'**
  String get exabyte;

  /// No description provided for @kContinue.
  ///
  /// In en, this message translates to:
  /// **'continue'**
  String get kContinue;

  /// No description provided for @conversation.
  ///
  /// In en, this message translates to:
  /// **'conversation'**
  String get conversation;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'first name'**
  String get firstName;

  /// No description provided for @startConversationMessage.
  ///
  /// In en, this message translates to:
  /// **'what\'s on your mind today?'**
  String get startConversationMessage;

  /// No description provided for @startConversationHintText.
  ///
  /// In en, this message translates to:
  /// **'type anything...'**
  String get startConversationHintText;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'chat'**
  String get chat;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'full name'**
  String get fullName;

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

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'gender'**
  String get gender;

  /// No description provided for @getResetPasswordLink.
  ///
  /// In en, this message translates to:
  /// **'get reset password link'**
  String get getResetPasswordLink;

  /// No description provided for @gigabyte.
  ///
  /// In en, this message translates to:
  /// **'gigabyte'**
  String get gigabyte;

  /// No description provided for @goCheckEmailForConfirmationLink.
  ///
  /// In en, this message translates to:
  /// **'welcome aboard! to complete your sign-up, please go to your {email} inbox and click the confirmation link we sent. (don\'t forget to check your spam folder.)'**
  String goCheckEmailForConfirmationLink(Object email);

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'google'**
  String get google;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'hello'**
  String get hello;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @invalidResetPasswordLink.
  ///
  /// In en, this message translates to:
  /// **'invalid reset password link'**
  String get invalidResetPasswordLink;

  /// No description provided for @kilobyte.
  ///
  /// In en, this message translates to:
  /// **'kilobyte'**
  String get kilobyte;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'last name'**
  String get lastName;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'light'**
  String get light;

  /// No description provided for @logInInstead.
  ///
  /// In en, this message translates to:
  /// **'already have an {appName} account? log in'**
  String logInInstead(Object appName);

  /// No description provided for @megabyte.
  ///
  /// In en, this message translates to:
  /// **'megabyte'**
  String get megabyte;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'new password'**
  String get newPassword;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'ok'**
  String get ok;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'password'**
  String get password;

  /// No description provided for @passwordChangedMessage.
  ///
  /// In en, this message translates to:
  /// **'your password has been changed successfully.'**
  String get passwordChangedMessage;

  /// No description provided for @passwordMustBeatLeast8Characters.
  ///
  /// In en, this message translates to:
  /// **'password must be at least 8 characters'**
  String get passwordMustBeatLeast8Characters;

  /// No description provided for @passwordMustContainAtLeastOneCapitalLetter.
  ///
  /// In en, this message translates to:
  /// **'password must contain at least one capital letter'**
  String get passwordMustContainAtLeastOneCapitalLetter;

  /// No description provided for @passwordMustContainAtLeastOneNumber.
  ///
  /// In en, this message translates to:
  /// **'password must contain at least one number'**
  String get passwordMustContainAtLeastOneNumber;

  /// No description provided for @passwordMustContainAtLeastOneSpecialCharacters.
  ///
  /// In en, this message translates to:
  /// **'password must contain at least one special character'**
  String get passwordMustContainAtLeastOneSpecialCharacters;

  /// No description provided for @passwordsMissMatching.
  ///
  /// In en, this message translates to:
  /// **'the two passwords do not match'**
  String get passwordsMissMatching;

  /// No description provided for @pendingUserInvitationMessage.
  ///
  /// In en, this message translates to:
  /// **'you have {pendingInvitationCount} pending invitations.'**
  String pendingUserInvitationMessage(Object pendingInvitationCount);

  /// No description provided for @petabyte.
  ///
  /// In en, this message translates to:
  /// **'petabyte'**
  String get petabyte;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'phone number'**
  String get phoneNumber;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'privacy policy'**
  String get privacyPolicy;

  /// No description provided for @profileUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'profile updated successfully'**
  String get profileUpdatedSuccessfully;

  /// No description provided for @providedByGoogleLogIn.
  ///
  /// In en, this message translates to:
  /// **'provided by google login'**
  String get providedByGoogleLogIn;

  /// No description provided for @publicFieldMessage.
  ///
  /// In en, this message translates to:
  /// **'this information will be public'**
  String get publicFieldMessage;

  /// No description provided for @requiredFieldMessage.
  ///
  /// In en, this message translates to:
  /// **'this field is required'**
  String get requiredFieldMessage;

  /// No description provided for @resendConfirmationLinkEmailMessage.
  ///
  /// In en, this message translates to:
  /// **'didn\'t receive the verification link? click to resend.'**
  String get resendConfirmationLinkEmailMessage;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'reset password'**
  String get resetPassword;

  /// No description provided for @retypeNewPassword.
  ///
  /// In en, this message translates to:
  /// **'re-type new password'**
  String get retypeNewPassword;

  /// No description provided for @retypePassword.
  ///
  /// In en, this message translates to:
  /// **'re-type password'**
  String get retypePassword;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'save'**
  String get save;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'select date'**
  String get selectDate;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'select gender'**
  String get selectGender;

  /// No description provided for @signInAfterVerifiedEmailMessage.
  ///
  /// In en, this message translates to:
  /// **'email verified. sign in now?'**
  String get signInAfterVerifiedEmailMessage;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'sign up'**
  String get signUp;

  /// No description provided for @syncWithSystem.
  ///
  /// In en, this message translates to:
  /// **'sync with system'**
  String get syncWithSystem;

  /// No description provided for @tellUserSignUpInSignInPage.
  ///
  /// In en, this message translates to:
  /// **'new user? sign up now!'**
  String get tellUserSignUpInSignInPage;

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

  /// No description provided for @unValidEmailMessage.
  ///
  /// In en, this message translates to:
  /// **'invalid email'**
  String get unValidEmailMessage;

  /// No description provided for @userCanceled.
  ///
  /// In en, this message translates to:
  /// **'user canceled.'**
  String get userCanceled;

  /// No description provided for @verifyingEmail.
  ///
  /// In en, this message translates to:
  /// **'verifying email...'**
  String get verifyingEmail;

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

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'edit'**
  String get edit;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'already have an account? sign in'**
  String get alreadyHaveAnAccount;

  /// No description provided for @showPassword.
  ///
  /// In en, this message translates to:
  /// **'show password'**
  String get showPassword;

  /// No description provided for @bio.
  ///
  /// In en, this message translates to:
  /// **'bio'**
  String get bio;

  /// No description provided for @createTopic.
  ///
  /// In en, this message translates to:
  /// **'create topic'**
  String get createTopic;

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

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'sign in'**
  String get signIn;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'apply'**
  String get apply;

  /// No description provided for @topic.
  ///
  /// In en, this message translates to:
  /// **'topic'**
  String get topic;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'content'**
  String get content;

  /// No description provided for @errorLoadingImage.
  ///
  /// In en, this message translates to:
  /// **'error loading image'**
  String get errorLoadingImage;

  /// No description provided for @cropImage.
  ///
  /// In en, this message translates to:
  /// **'crop image'**
  String get cropImage;

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

  /// No description provided for @elementCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{element} created successfully.'**
  String elementCreatedSuccessfully(Object element);

  /// No description provided for @elementDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{element} deleted successfully.'**
  String elementDeletedSuccessfully(Object element);

  /// No description provided for @elementRetrievedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{element} retrieved successfully.'**
  String elementRetrievedSuccessfully(Object element);

  /// No description provided for @elementUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{element} updated successfully.'**
  String elementUpdatedSuccessfully(Object element);

  /// No description provided for @feedbackTitleMessage.
  ///
  /// In en, this message translates to:
  /// **'feel free to drop us your feedback.'**
  String get feedbackTitleMessage;

  /// No description provided for @pickCategory.
  ///
  /// In en, this message translates to:
  /// **'pick category'**
  String get pickCategory;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'feedback'**
  String get feedback;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'submit'**
  String get submit;

  /// No description provided for @bugs.
  ///
  /// In en, this message translates to:
  /// **'bugs'**
  String get bugs;

  /// No description provided for @featureRequest.
  ///
  /// In en, this message translates to:
  /// **'feature request'**
  String get featureRequest;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'question'**
  String get question;

  /// No description provided for @pricing.
  ///
  /// In en, this message translates to:
  /// **'pricing'**
  String get pricing;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'other'**
  String get other;

  /// No description provided for @userFeedback.
  ///
  /// In en, this message translates to:
  /// **'user feedback'**
  String get userFeedback;

  /// No description provided for @clearCache.
  ///
  /// In en, this message translates to:
  /// **'clear cache'**
  String get clearCache;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'sign out'**
  String get signOut;

  /// No description provided for @emptyHistoryRoutes.
  ///
  /// In en, this message translates to:
  /// **'empty history routes.'**
  String get emptyHistoryRoutes;

  /// No description provided for @sorryAppFacingIssue.
  ///
  /// In en, this message translates to:
  /// **'sorry, the app is currently facing an issue. this problem is likely from our server or outside the developer\'s control.'**
  String get sorryAppFacingIssue;

  /// No description provided for @noPermissionMessage.
  ///
  /// In en, this message translates to:
  /// **'no permission to view'**
  String get noPermissionMessage;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'coming soon'**
  String get comingSoon;

  /// No description provided for @loadingMessage.
  ///
  /// In en, this message translates to:
  /// **'loading, please wait...'**
  String get loadingMessage;

  /// No description provided for @noSelectionMessage.
  ///
  /// In en, this message translates to:
  /// **'you haven\'t selected anything.'**
  String get noSelectionMessage;

  /// No description provided for @changeImage.
  ///
  /// In en, this message translates to:
  /// **'change image'**
  String get changeImage;

  /// No description provided for @invalidData.
  ///
  /// In en, this message translates to:
  /// **'invalid data.'**
  String get invalidData;

  /// No description provided for @pickImage.
  ///
  /// In en, this message translates to:
  /// **'pick image'**
  String get pickImage;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'done'**
  String get done;

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

  /// No description provided for @goToSubscriptions.
  ///
  /// In en, this message translates to:
  /// **'go to subscriptions'**
  String get goToSubscriptions;

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

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'logout'**
  String get logout;

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

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get more;

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

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'notification'**
  String get notification;

  /// No description provided for @markAllAsRead.
  ///
  /// In en, this message translates to:
  /// **'mark all as read'**
  String get markAllAsRead;

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

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'welcome back!'**
  String get welcomeBack;

  /// No description provided for @acceptLegalNotesSuffix.
  ///
  /// In en, this message translates to:
  /// **'.'**
  String get acceptLegalNotesSuffix;

  /// No description provided for @addBalance.
  ///
  /// In en, this message translates to:
  /// **'charge wallet'**
  String get addBalance;

  /// No description provided for @acceptLegalNotesAnd.
  ///
  /// In en, this message translates to:
  /// **' and the '**
  String get acceptLegalNotesAnd;

  /// No description provided for @createItem.
  ///
  /// In en, this message translates to:
  /// **'create {item}'**
  String createItem(Object item);

  /// No description provided for @emailVerifiedMessage.
  ///
  /// In en, this message translates to:
  /// **'great! your email has been verified successfully.'**
  String get emailVerifiedMessage;

  /// No description provided for @notValidLinkMessage.
  ///
  /// In en, this message translates to:
  /// **'this link is not valid. please try sending a new one or signing in if you have already confirmed your email.'**
  String get notValidLinkMessage;

  /// No description provided for @yourProfile.
  ///
  /// In en, this message translates to:
  /// **'your profile'**
  String get yourProfile;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'pay'**
  String get pay;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'created at'**
  String get createdAt;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'recommended'**
  String get recommended;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'total'**
  String get total;

  /// No description provided for @annualDiscountDescription.
  ///
  /// In en, this message translates to:
  /// **'Pay for 10 months, get a full year.'**
  String get annualDiscountDescription;

  /// No description provided for @createdBy.
  ///
  /// In en, this message translates to:
  /// **'created by'**
  String get createdBy;

  /// No description provided for @paidAt.
  ///
  /// In en, this message translates to:
  /// **'paid at'**
  String get paidAt;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'description'**
  String get description;

  /// No description provided for @sendInvoiceToEmail.
  ///
  /// In en, this message translates to:
  /// **'this email will be used to send you the invoice.'**
  String get sendInvoiceToEmail;

  /// No description provided for @paymentPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'your phone number registered with the payment method.'**
  String get paymentPhoneNumber;

  /// No description provided for @addFunds.
  ///
  /// In en, this message translates to:
  /// **'add funds'**
  String get addFunds;

  /// No description provided for @fillFollowingFields.
  ///
  /// In en, this message translates to:
  /// **'fill the following fields:'**
  String get fillFollowingFields;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'confirm'**
  String get confirm;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'copied to clipboard!'**
  String get copiedToClipboard;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'amount'**
  String get amount;

  /// No description provided for @invoiceDescription.
  ///
  /// In en, this message translates to:
  /// **'notes for this invoice (optional)'**
  String get invoiceDescription;

  /// No description provided for @purchaseService.
  ///
  /// In en, this message translates to:
  /// **'purchase a service'**
  String get purchaseService;

  /// No description provided for @pricingPageTitleFromPaid.
  ///
  /// In en, this message translates to:
  /// **'You are currently on the {planName} plan. Explore other options or manage your billing below.'**
  String pricingPageTitleFromPaid(Object planName);

  /// No description provided for @acceptLegalNotesPrefix.
  ///
  /// In en, this message translates to:
  /// **'by checking this box, you accept the '**
  String get acceptLegalNotesPrefix;

  /// No description provided for @zettabyte.
  ///
  /// In en, this message translates to:
  /// **'zettabyte'**
  String get zettabyte;

  /// No description provided for @itemDetails.
  ///
  /// In en, this message translates to:
  /// **'{item} details'**
  String itemDetails(Object item);

  /// No description provided for @invoiceCurrency.
  ///
  /// In en, this message translates to:
  /// **'invoice currency'**
  String get invoiceCurrency;

  /// No description provided for @payMonthly.
  ///
  /// In en, this message translates to:
  /// **'pay monthly'**
  String get payMonthly;

  /// No description provided for @payYearly.
  ///
  /// In en, this message translates to:
  /// **'pay yearly'**
  String get payYearly;

  /// No description provided for @itemNo.
  ///
  /// In en, this message translates to:
  /// **'{item} number'**
  String itemNo(Object item);

  /// No description provided for @itemType.
  ///
  /// In en, this message translates to:
  /// **'{item} type'**
  String itemType(Object item);

  /// No description provided for @dollar.
  ///
  /// In en, this message translates to:
  /// **'dollar (\$)'**
  String get dollar;

  /// No description provided for @annualDiscountBadge.
  ///
  /// In en, this message translates to:
  /// **'2 Months Free'**
  String get annualDiscountBadge;

  /// No description provided for @continuing.
  ///
  /// In en, this message translates to:
  /// **'continuing'**
  String get continuing;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'payment'**
  String get payment;

  /// No description provided for @pricingPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Put your social media on autopilot.\nStart automating for free.'**
  String get pricingPageTitle;

  /// No description provided for @daysRemaining.
  ///
  /// In en, this message translates to:
  /// **'{count,plural, =0{No days remaining} =1{{count} day remaining} other{{count} days remaining}}'**
  String daysRemaining(num count);

  /// No description provided for @forgetPasswordMessage.
  ///
  /// In en, this message translates to:
  /// **'forgot password?'**
  String get forgetPasswordMessage;

  /// No description provided for @youCanCloseThisPage.
  ///
  /// In en, this message translates to:
  /// **'you can close this page now.'**
  String get youCanCloseThisPage;

  /// No description provided for @signInWithNewPassword.
  ///
  /// In en, this message translates to:
  /// **'sign in with new password'**
  String get signInWithNewPassword;

  /// No description provided for @operationCompletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'operation completed successfully.'**
  String get operationCompletedSuccessfully;

  /// No description provided for @pricingPageTitleFromFree.
  ///
  /// In en, this message translates to:
  /// **'Ready to unlock more power? Choose the plan that best fits your growing needs.'**
  String get pricingPageTitleFromFree;

  /// No description provided for @invoice.
  ///
  /// In en, this message translates to:
  /// **'invoice'**
  String get invoice;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'invoices'**
  String get invoices;

  /// No description provided for @currentSubscription.
  ///
  /// In en, this message translates to:
  /// **'current subscription'**
  String get currentSubscription;

  /// No description provided for @activeSubscription.
  ///
  /// In en, this message translates to:
  /// **'active subscription'**
  String get activeSubscription;

  /// No description provided for @manage.
  ///
  /// In en, this message translates to:
  /// **'manage'**
  String get manage;

  /// No description provided for @upgrade.
  ///
  /// In en, this message translates to:
  /// **'upgrade'**
  String get upgrade;

  /// No description provided for @neverExpires.
  ///
  /// In en, this message translates to:
  /// **'never expires'**
  String get neverExpires;

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

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'select country'**
  String get selectCountry;

  /// No description provided for @betterExperienceAvailable.
  ///
  /// In en, this message translates to:
  /// **'better experience available'**
  String get betterExperienceAvailable;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'continue with google'**
  String get continueWithGoogle;

  /// No description provided for @betterExperienceDescription.
  ///
  /// In en, this message translates to:
  /// **'for the best experience, we recommend opening this app in your default browser.'**
  String get betterExperienceDescription;

  /// No description provided for @messageAfterSendingResetPasswordLink.
  ///
  /// In en, this message translates to:
  /// **'we have sent a password reset link to your email address. please check your inbox (including the spam folder) and follow the instructions.'**
  String get messageAfterSendingResetPasswordLink;

  /// No description provided for @messageSuccessResetPasswordLink.
  ///
  /// In en, this message translates to:
  /// **'all set! your password has been successfully reset. you can now log in with your new password.'**
  String get messageSuccessResetPasswordLink;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get month;

  /// No description provided for @unpaid.
  ///
  /// In en, this message translates to:
  /// **'unpaid'**
  String get unpaid;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'paid'**
  String get paid;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'canceled'**
  String get canceled;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'free'**
  String get free;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'about app'**
  String get aboutApp;

  /// No description provided for @copyUrlDescription.
  ///
  /// In en, this message translates to:
  /// **'alternatively, you can copy the current url and paste it in your browser.'**
  String get copyUrlDescription;

  /// No description provided for @copyUrl.
  ///
  /// In en, this message translates to:
  /// **'copy url'**
  String get copyUrl;

  /// No description provided for @urlCopied.
  ///
  /// In en, this message translates to:
  /// **'url copied to clipboard!'**
  String get urlCopied;

  /// No description provided for @continueHere.
  ///
  /// In en, this message translates to:
  /// **'continue here'**
  String get continueHere;

  /// No description provided for @uploadMaterial.
  ///
  /// In en, this message translates to:
  /// **'upload material'**
  String get uploadMaterial;

  /// No description provided for @noFilesUploaded.
  ///
  /// In en, this message translates to:
  /// **'no files have been uploaded yet.'**
  String get noFilesUploaded;

  /// No description provided for @pressToUploadNow.
  ///
  /// In en, this message translates to:
  /// **'press to upload now'**
  String get pressToUploadNow;

  /// No description provided for @materials.
  ///
  /// In en, this message translates to:
  /// **'materials'**
  String get materials;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'female'**
  String get female;

  /// No description provided for @notSpecified.
  ///
  /// In en, this message translates to:
  /// **'not specified'**
  String get notSpecified;

  /// No description provided for @newFreeTrial.
  ///
  /// In en, this message translates to:
  /// **'i need a new free trial'**
  String get newFreeTrial;

  /// No description provided for @switchingTool.
  ///
  /// In en, this message translates to:
  /// **'i want to use another tool'**
  String get switchingTool;

  /// No description provided for @notSatisfied.
  ///
  /// In en, this message translates to:
  /// **'i don\'t like it'**
  String get notSatisfied;

  /// No description provided for @hadAnIssue.
  ///
  /// In en, this message translates to:
  /// **'i had a technical issue'**
  String get hadAnIssue;

  /// No description provided for @lackOfSupport.
  ///
  /// In en, this message translates to:
  /// **'lack of support'**
  String get lackOfSupport;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'delete account'**
  String get deleteAccount;

  /// No description provided for @tooExpensive.
  ///
  /// In en, this message translates to:
  /// **'it is too expensive'**
  String get tooExpensive;

  /// No description provided for @missingFeatures.
  ///
  /// In en, this message translates to:
  /// **'missing features i need'**
  String get missingFeatures;

  /// No description provided for @justDeleteIt.
  ///
  /// In en, this message translates to:
  /// **'just delete it'**
  String get justDeleteIt;

  /// No description provided for @noMaterials.
  ///
  /// In en, this message translates to:
  /// **'no materials uploaded yet!\nYou need at least one material to study.'**
  String get noMaterials;

  /// No description provided for @noMaterialInTopic.
  ///
  /// In en, this message translates to:
  /// **'This topic does not have any material yet. Upload to start.'**
  String get noMaterialInTopic;

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

  /// No description provided for @deleteYourAccount.
  ///
  /// In en, this message translates to:
  /// **'delete your account'**
  String get deleteYourAccount;

  /// No description provided for @important.
  ///
  /// In en, this message translates to:
  /// **'important'**
  String get important;

  /// No description provided for @weValueYourFeedback.
  ///
  /// In en, this message translates to:
  /// **'we value your feedback...'**
  String get weValueYourFeedback;

  /// Warning message displayed to the user before they confirm their account deletion.
  ///
  /// In en, this message translates to:
  /// **'selecting \'{justDelete}\' will schedule your account for permanent deletion in {days} days. All of your data will be erased.'**
  String deleteAccountWarningText(String justDelete, int days);

  /// No description provided for @whyAreYouLeaving.
  ///
  /// In en, this message translates to:
  /// **'please let us know why you are leaving:'**
  String get whyAreYouLeaving;

  /// No description provided for @tellUsMoreAboutTheIssue.
  ///
  /// In en, this message translates to:
  /// **'can you tell us more about the issue?'**
  String get tellUsMoreAboutTheIssue;
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
