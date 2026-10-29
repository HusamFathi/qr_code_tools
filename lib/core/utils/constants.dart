import 'package:flutter/material.dart';

/* Primary: Teal */
// --primary: oklch(0.496 0.143 198.5); -> #008299
/* Secondary: Coral */
// --secondary: oklch(0.704 0.191 22.22); -> #ff8552

//! app theme color
Color kPrimaryColor = const Color(0xFF008080);
Color kSecondaryColor = const Color(0xFFFF8552);
int kApiVersion = 1;
bool useLocalHost = false;
String kBaseUrl = useLocalHost == true
    ? 'http://10.0.2.2/api/v$kApiVersion'
    : 'https://skillably-api.tip2.libyanspider.cloud/api/v$kApiVersion';

/// this value will be used for all widgets that will need rounded corners
const double kRoundedCorners = 12;

//  tokens end points

const double kMediumRadius = 20;

///
const double kSmallRadius = 12;
////////////////////////////////////////////////////////////////

const double kTextFiledBordersRadius = 10;

///
/// gap between widgets and containers in pixels (double)
/// large is 40 medium is 25 small is 10 tiny is 10
const double kLargeGap = 40;

/// gap between widgets and containers in pixels (double)
/// large is 40 medium is 25 small is 10 tiny is 10
const double kMediumGap = (25);

/// gap between widgets and containers in pixels (double)
/// large is 40 medium is 25 small is 10 tiny is 10
const double kSmallGap = (10);

/// gap between widgets and containers in pixels (double)
/// large is 40 medium is 25 small is 10 tiny is 10
const double kTinyGap = (5);
//
///tiny padding is equal to 5
const double kTinyPadding = (5);

///small padding is equal to 10
const double kSmallPadding = (10);

///medium padding is equal to 25

const double kMediumPadding = (25);

///large padding is equal to 40

const double kLargePadding = (40);
////////////////////////////////////////////////////////////////

// sign /sin uip button size
Size kLargeButtonSize = const Size(225, 65);

///
///
///
///

/// auth forms min width
double kAuthFormsMinWidth = 300;

/// auth forms max width

double kAuthFormsMaxWidth = 375;
/////////////////////////////////////////////////////////////////////////////////////
/// animated container duration
Duration kAnimationDuration = const Duration(milliseconds: 500);
Curve kAnimationCurve = Curves.bounceIn;

///
///dividers
const double kDividerThicknessThin = 1.0;
const double kDividerThicknessMedium = 2.0;
const double kDividerThicknessThick = 3.0;

/// max screen content width designed for this app
double kMaxScreenWidth = 1000;

TextStyle kLandingBlocTitleTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium!;
const String kFacebookPageLink =
    'https://www.facebook.com/profile.php?id=61572682074346';
const String kInstagramPageLink = 'https://www.instagram.com/skillably.ly/';
const String kLinkedInPageLink =
    'https://www.linkedin.com/company/skillably-%D8%A3%D8%AA%D9%88%D8%A8%D9%88%D8%AA%D8%B3/?viewAsMember=true';
const String kSupportEmail = 'hi@skillably.ly';
const String kTermsOfUseLink = 'https://skillab.ly/terms-of-service';
const String kPrivacyPolicyLink = 'https://skillab.ly/privacy-policy'; //

const String kWhitelistSurveyLink = 'https://forms.gle/dE2qFU9hadXWMgHaA';

const double kListTileLeadingSize = 45;
