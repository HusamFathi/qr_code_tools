// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get account => 'account';

  @override
  String get appTitle => 'skillably';

  @override
  String get askToVerifyEmailFirst => 'ask to verify email first';

  @override
  String get askUserToCompleteTheirProfile =>
      'please complete your profile to continue';

  @override
  String get bioMessage => 'tell us a bit about yourself';

  @override
  String get birthday => 'birthday';

  @override
  String get byte => 'byte';

  @override
  String get changePassword => 'change password';

  @override
  String get checkYourEmailInbox => 'check your email inbox';

  @override
  String get country => 'country';

  @override
  String get chapters => 'chapters';

  @override
  String get lessons => 'lessons';

  @override
  String get expiredAt => 'expired at';

  @override
  String get contentGeneration => 'content generation';

  @override
  String get createProfile => 'create profile';

  @override
  String get allowPermission => 'allow permission';

  @override
  String get finishedQuizMessage =>
      'great work - you answered every question. Keep the momentum going and take on your next lesson.';

  @override
  String get finishedQuizTitle => 'quiz complete!';

  @override
  String get backToLessons => 'Back to lessons';

  @override
  String get startQuiz => 'start quiz';

  @override
  String get dark => 'dark';

  @override
  String get excellent => 'excellent';

  @override
  String get notQuite => 'not quite!';

  @override
  String get check => 'check';

  @override
  String get kTrue => 'true';

  @override
  String get kFalse => 'false';

  @override
  String get updateTopic => 'update topic';

  @override
  String get enterTopicNotesHint =>
      'e.g., \'these are the notes for my machine learning topic\'';

  @override
  String get email => 'email';

  @override
  String get deleteTopic => 'delete topic';

  @override
  String get chapter => 'chapter';

  @override
  String get file => 'file';

  @override
  String get upload => 'upload';

  @override
  String get noTopics =>
      'the time is yours \n no study topics have been created yet.';

  @override
  String get notes => 'notes';

  @override
  String get selectMaterials => 'select materials';

  @override
  String get enterTopicNameHint => 'e.g., \'introduction to machine learning\'';

  @override
  String get topicName => 'topic name';

  @override
  String get topicNameDescription =>
      'enter a descriptive name for your topic to clarify the material you want to study.';

  @override
  String get errorGettingGoogleTokenMessage => 'error getting google token';

  @override
  String get errorSendingEmail => 'error sending email';

  @override
  String get exabyte => 'exabyte';

  @override
  String get kContinue => 'continue';

  @override
  String get conversation => 'conversation';

  @override
  String get firstName => 'first name';

  @override
  String get startConversationMessage => 'what\'s on your mind today?';

  @override
  String get startConversationHintText => 'type anything...';

  @override
  String get chat => 'chat';

  @override
  String get fullName => 'full name';

  @override
  String get message => 'message';

  @override
  String get history => 'history';

  @override
  String get gender => 'gender';

  @override
  String get getResetPasswordLink => 'get reset password link';

  @override
  String get gigabyte => 'gigabyte';

  @override
  String goCheckEmailForConfirmationLink(Object email) {
    return 'welcome aboard! to complete your sign-up, please go to your $email inbox and click the confirmation link we sent. (don\'t forget to check your spam folder.)';
  }

  @override
  String get google => 'google';

  @override
  String get hello => 'hello';

  @override
  String get invalidPhoneNumber => 'invalid phone number';

  @override
  String get invalidResetPasswordLink => 'invalid reset password link';

  @override
  String get kilobyte => 'kilobyte';

  @override
  String get lastName => 'last name';

  @override
  String get light => 'light';

  @override
  String logInInstead(Object appName) {
    return 'already have an $appName account? log in';
  }

  @override
  String get megabyte => 'megabyte';

  @override
  String get newPassword => 'new password';

  @override
  String get ok => 'ok';

  @override
  String get password => 'password';

  @override
  String get passwordChangedMessage =>
      'your password has been changed successfully.';

  @override
  String get passwordMustBeatLeast8Characters =>
      'password must be at least 8 characters';

  @override
  String get passwordMustContainAtLeastOneCapitalLetter =>
      'password must contain at least one capital letter';

  @override
  String get passwordMustContainAtLeastOneNumber =>
      'password must contain at least one number';

  @override
  String get passwordMustContainAtLeastOneSpecialCharacters =>
      'password must contain at least one special character';

  @override
  String get passwordsMissMatching => 'the two passwords do not match';

  @override
  String pendingUserInvitationMessage(Object pendingInvitationCount) {
    return 'you have $pendingInvitationCount pending invitations.';
  }

  @override
  String get petabyte => 'petabyte';

  @override
  String get phoneNumber => 'phone number';

  @override
  String get privacyPolicy => 'privacy policy';

  @override
  String get profileUpdatedSuccessfully => 'profile updated successfully';

  @override
  String get providedByGoogleLogIn => 'provided by google login';

  @override
  String get publicFieldMessage => 'this information will be public';

  @override
  String get requiredFieldMessage => 'this field is required';

  @override
  String get resendConfirmationLinkEmailMessage =>
      'didn\'t receive the verification link? click to resend.';

  @override
  String get resetPassword => 'reset password';

  @override
  String get retypeNewPassword => 're-type new password';

  @override
  String get retypePassword => 're-type password';

  @override
  String get save => 'save';

  @override
  String get selectDate => 'select date';

  @override
  String get selectGender => 'select gender';

  @override
  String get signInAfterVerifiedEmailMessage => 'email verified. sign in now?';

  @override
  String get signUp => 'sign up';

  @override
  String get syncWithSystem => 'sync with system';

  @override
  String get tellUserSignUpInSignInPage => 'new user? sign up now!';

  @override
  String get terabyte => 'terabyte';

  @override
  String get termsOfUse => 'terms of use';

  @override
  String get unValidEmailMessage => 'invalid email';

  @override
  String get userCanceled => 'user canceled.';

  @override
  String get verifyingEmail => 'verifying email...';

  @override
  String get yottabyte => 'yottabyte';

  @override
  String get profile => 'profile';

  @override
  String get edit => 'edit';

  @override
  String get alreadyHaveAnAccount => 'already have an account? sign in';

  @override
  String get showPassword => 'show password';

  @override
  String get bio => 'bio';

  @override
  String get createTopic => 'create topic';

  @override
  String get topics => 'topics';

  @override
  String get settings => 'settings';

  @override
  String get home => 'home';

  @override
  String get signIn => 'sign in';

  @override
  String get apply => 'apply';

  @override
  String get topic => 'topic';

  @override
  String get content => 'content';

  @override
  String get errorLoadingImage => 'error loading image';

  @override
  String get cropImage => 'crop image';

  @override
  String get contactUs => 'contact us';

  @override
  String get sendFeedback => 'send feedback';

  @override
  String get contactUsWithEmail => 'contact us with email';

  @override
  String elementCreatedSuccessfully(Object element) {
    return '$element created successfully.';
  }

  @override
  String elementDeletedSuccessfully(Object element) {
    return '$element deleted successfully.';
  }

  @override
  String elementRetrievedSuccessfully(Object element) {
    return '$element retrieved successfully.';
  }

  @override
  String elementUpdatedSuccessfully(Object element) {
    return '$element updated successfully.';
  }

  @override
  String get feedbackTitleMessage => 'feel free to drop us your feedback.';

  @override
  String get pickCategory => 'pick category';

  @override
  String get feedback => 'feedback';

  @override
  String get submit => 'submit';

  @override
  String get bugs => 'bugs';

  @override
  String get featureRequest => 'feature request';

  @override
  String get question => 'question';

  @override
  String get pricing => 'pricing';

  @override
  String get other => 'other';

  @override
  String get userFeedback => 'user feedback';

  @override
  String get clearCache => 'clear cache';

  @override
  String get signOut => 'sign out';

  @override
  String get emptyHistoryRoutes => 'empty history routes.';

  @override
  String get sorryAppFacingIssue =>
      'sorry, the app is currently facing an issue. this problem is likely from our server or outside the developer\'s control.';

  @override
  String get noPermissionMessage => 'no permission to view';

  @override
  String get comingSoon => 'coming soon';

  @override
  String get loadingMessage => 'loading, please wait...';

  @override
  String get noSelectionMessage => 'you haven\'t selected anything.';

  @override
  String get changeImage => 'change image';

  @override
  String get invalidData => 'invalid data.';

  @override
  String get pickImage => 'pick image';

  @override
  String get done => 'done';

  @override
  String get confirmDeletionAction => 'confirm deletion';

  @override
  String get confirmThisActionMessage =>
      'are you sure you want to perform this action? this cannot be undone.';

  @override
  String get discard => 'discard';

  @override
  String get delete => 'delete';

  @override
  String get doYouWantToContinue => 'do you want to continue?';

  @override
  String get retry => 'retry';

  @override
  String get goToSubscriptions => 'go to subscriptions';

  @override
  String errorCode(Object code) {
    return 'error code: $code';
  }

  @override
  String get noData => 'no data to show.';

  @override
  String get or => 'or';

  @override
  String get poweredByAtheerio => 'powered by atheerio';

  @override
  String get reCaptchaMessage =>
      'this site is protected by recaptcha and the google';

  @override
  String get and => 'and';

  @override
  String get badRequestException => 'bad request';

  @override
  String get netWorkConnectionErrorMessage => 'no internet connection';

  @override
  String get sessionExpiredFailureMessage =>
      'your session has expired, please log in again';

  @override
  String get paymentRequiredFailureMessage => 'payment required';

  @override
  String get forbiddenFailureMessage =>
      'you do not have permission to perform this action';

  @override
  String get cacheFailure => 'cache failure';

  @override
  String get metaAuthErrorMessage => 'meta authentication error';

  @override
  String get unKnownErrorMessage => 'an unknown error occurred';

  @override
  String get logout => 'logout';

  @override
  String get optional => 'optional';

  @override
  String get youChangesWillBeLost => 'your changes will be lost';

  @override
  String versionInfo(Object version) {
    return 'version $version';
  }

  @override
  String get general => 'general';

  @override
  String get appTheme => 'app theme';

  @override
  String get language => 'language';

  @override
  String get more => 'more';

  @override
  String get editNotificationPreferences => 'edit notification preferences';

  @override
  String get cancel => 'cancel';

  @override
  String get legal => 'legal';

  @override
  String get chooseLanguage => 'choose language';

  @override
  String get notification => 'notification';

  @override
  String get markAllAsRead => 'mark all as read';

  @override
  String get notifications => 'notifications';

  @override
  String get settingsUpdatedSuccessfully => 'settings updated successfully.';

  @override
  String get welcomeBack => 'welcome back!';

  @override
  String get acceptLegalNotesSuffix => '.';

  @override
  String get addBalance => 'charge wallet';

  @override
  String get acceptLegalNotesAnd => ' and the ';

  @override
  String createItem(Object item) {
    return 'create $item';
  }

  @override
  String get emailVerifiedMessage =>
      'great! your email has been verified successfully.';

  @override
  String get notValidLinkMessage =>
      'this link is not valid. please try sending a new one or signing in if you have already confirmed your email.';

  @override
  String get yourProfile => 'your profile';

  @override
  String get pay => 'pay';

  @override
  String get createdAt => 'created at';

  @override
  String get recommended => 'recommended';

  @override
  String get total => 'total';

  @override
  String get annualDiscountDescription => 'Pay for 10 months, get a full year.';

  @override
  String get createdBy => 'created by';

  @override
  String get paidAt => 'paid at';

  @override
  String get description => 'description';

  @override
  String get sendInvoiceToEmail =>
      'this email will be used to send you the invoice.';

  @override
  String get paymentPhoneNumber =>
      'your phone number registered with the payment method.';

  @override
  String get addFunds => 'add funds';

  @override
  String get fillFollowingFields => 'fill the following fields:';

  @override
  String get confirm => 'confirm';

  @override
  String get copiedToClipboard => 'copied to clipboard!';

  @override
  String get amount => 'amount';

  @override
  String get invoiceDescription => 'notes for this invoice (optional)';

  @override
  String get purchaseService => 'purchase a service';

  @override
  String pricingPageTitleFromPaid(Object planName) {
    return 'You are currently on the $planName plan. Explore other options or manage your billing below.';
  }

  @override
  String get acceptLegalNotesPrefix => 'by checking this box, you accept the ';

  @override
  String get zettabyte => 'zettabyte';

  @override
  String itemDetails(Object item) {
    return '$item details';
  }

  @override
  String get invoiceCurrency => 'invoice currency';

  @override
  String get payMonthly => 'pay monthly';

  @override
  String get payYearly => 'pay yearly';

  @override
  String itemNo(Object item) {
    return '$item number';
  }

  @override
  String itemType(Object item) {
    return '$item type';
  }

  @override
  String get dollar => 'dollar (\$)';

  @override
  String get annualDiscountBadge => '2 Months Free';

  @override
  String get continuing => 'continuing';

  @override
  String get payment => 'payment';

  @override
  String get pricingPageTitle =>
      'Put your social media on autopilot.\nStart automating for free.';

  @override
  String daysRemaining(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days remaining',
      one: '$count day remaining',
      zero: 'No days remaining',
    );
    return '$_temp0';
  }

  @override
  String get forgetPasswordMessage => 'forgot password?';

  @override
  String get youCanCloseThisPage => 'you can close this page now.';

  @override
  String get signInWithNewPassword => 'sign in with new password';

  @override
  String get operationCompletedSuccessfully =>
      'operation completed successfully.';

  @override
  String get pricingPageTitleFromFree =>
      'Ready to unlock more power? Choose the plan that best fits your growing needs.';

  @override
  String get invoice => 'invoice';

  @override
  String get invoices => 'invoices';

  @override
  String get currentSubscription => 'current subscription';

  @override
  String get activeSubscription => 'active subscription';

  @override
  String get manage => 'manage';

  @override
  String get upgrade => 'upgrade';

  @override
  String get neverExpires => 'never expires';

  @override
  String get personal => 'personal';

  @override
  String get subscription => 'subscription';

  @override
  String get selectCountry => 'select country';

  @override
  String get betterExperienceAvailable => 'better experience available';

  @override
  String get continueWithGoogle => 'continue with google';

  @override
  String get betterExperienceDescription =>
      'for the best experience, we recommend opening this app in your default browser.';

  @override
  String get messageAfterSendingResetPasswordLink =>
      'we have sent a password reset link to your email address. please check your inbox (including the spam folder) and follow the instructions.';

  @override
  String get messageSuccessResetPasswordLink =>
      'all set! your password has been successfully reset. you can now log in with your new password.';

  @override
  String get month => 'month';

  @override
  String get unpaid => 'unpaid';

  @override
  String get paid => 'paid';

  @override
  String get canceled => 'canceled';

  @override
  String get free => 'free';

  @override
  String get aboutApp => 'about app';

  @override
  String get copyUrlDescription =>
      'alternatively, you can copy the current url and paste it in your browser.';

  @override
  String get copyUrl => 'copy url';

  @override
  String get urlCopied => 'url copied to clipboard!';

  @override
  String get continueHere => 'continue here';

  @override
  String get uploadMaterial => 'upload material';

  @override
  String get noFilesUploaded => 'no files have been uploaded yet.';

  @override
  String get pressToUploadNow => 'press to upload now';

  @override
  String get materials => 'materials';

  @override
  String get male => 'male';

  @override
  String get female => 'female';

  @override
  String get notSpecified => 'not specified';

  @override
  String get newFreeTrial => 'i need a new free trial';

  @override
  String get switchingTool => 'i want to use another tool';

  @override
  String get notSatisfied => 'i don\'t like it';

  @override
  String get hadAnIssue => 'i had a technical issue';

  @override
  String get lackOfSupport => 'lack of support';

  @override
  String get deleteAccount => 'delete account';

  @override
  String get tooExpensive => 'it is too expensive';

  @override
  String get missingFeatures => 'missing features i need';

  @override
  String get justDeleteIt => 'just delete it';

  @override
  String get noMaterials =>
      'no materials uploaded yet!\nYou need at least one material to study.';

  @override
  String get noMaterialInTopic =>
      'This topic does not have any material yet. Upload to start.';

  @override
  String get authFlowConflictFailureMessage =>
      'there is a conflict with the current authentication flow.';

  @override
  String get emailVerificationRequiredFailureMessage =>
      'email verification is required to continue.';

  @override
  String get deleteYourAccount => 'delete your account';

  @override
  String get important => 'important';

  @override
  String get weValueYourFeedback => 'we value your feedback...';

  @override
  String deleteAccountWarningText(String justDelete, int days) {
    return 'selecting \'$justDelete\' will schedule your account for permanent deletion in $days days. All of your data will be erased.';
  }

  @override
  String get whyAreYouLeaving => 'please let us know why you are leaving:';

  @override
  String get tellUsMoreAboutTheIssue => 'can you tell us more about the issue?';
}
