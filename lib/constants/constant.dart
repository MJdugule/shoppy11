//colors
import 'dart:io';

import 'package:flutter/material.dart';

//colors
const Color kMainColorDark = Color(0xFF2879FE);
const Color kMainColorLight = Color.fromARGB(255, 211, 227, 253);
const Color kMainColorFade = Color(0xFFf1e7fe);
const Color kSecondaryColorLight = Color(0xFF03dac5);
const Color kSecondaryColorDark = Color(0xFFff9933);
const Color kDarkGrey = Color(0xFF3e3e3e);
const Color kDeepGrey = Color(0xFF7b7b7b);
const Color kMediumGrey = Color(0xFFd4d2db);
const Color kLightWhite = Color(0x80FFFFFF);
const Color kWhite = Color(0xFFFFFFFF);
const Color kWhiteTwo = Color(0xFFFAFAFA);
const Color kLightGrey = Color(0xFFF5F5F5);
const Color kLightGreyTwo = Color(0xFFFAF9F9);
const Color kLightGreyThree = Color(0xFFe5e5e5);
const Color kShadowColor = Color(0xFFB0cce1);
const Color kGrey = Color(0xFFC5C5C5);
const Color kLightBlack = Color(0xFF191919);
const Color kBlack = Color(0xFF000000);
const Color kRed = Color(0xFFFF4949);
const Color kGreen = Color(0xFF13ce66);
const Color kOrange = Color(0xFFffc82c);
const Color kBlue = Color(0xFF1fb6ff);

const String kPwatch = 'assets/images/pwatch.jpg';
const String kPmachine = 'assets/images/pmachine.jpg';
const String kPhelmet = 'assets/images/pHelmet.jpg';
const String kPBoot = 'assets/images/pBlueBoot.jpg';
const String kps5 = 'assets/images/ps5.jpg';
const String kLogo = 'assets/icons/bdLogo.png';
const String kWatch = 'assets/images/watch.jpg';

//animations
const kDuration = Duration(milliseconds: 300);
const kCurve = Curves.ease;

//auth validator strings
final RegExp regexEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
final RegExp regexNumber = RegExp(r'\d');
final RegExp regexUpperCase = RegExp(r'[A-Z]');
final RegExp regexSpecialCharacter = RegExp(r'[_!@#$%&*.~?]');
final RegExp regexMobile = RegExp(r'(^[0-9]{10,12}$)');
final RegExp regexName = RegExp(r'^[A-Za-z ]+$');
final RegExp regexStreetName = RegExp(r'^[A-Za-z0-9, ]+$');
final RegExp regexOTP = RegExp(r'[0-9,\b]');
final RegExp regexZip =
    RegExp(r"^[a-z0-9][a-z0-9\- ]{0,10}[a-z0-9]$", caseSensitive: false);
const String kEmptyEmailError = 'Email is required';
const String kInvalidEmailError = 'Please enter a valid email address';
const String kEmptyPasswordError = 'Password is required';
const String kInvalidPasswordError = 'Please enter a valid password';
const String kPasswordMatchError = 'Passwords do not match';
const String kUserExists =
    "User already registered, \nPlease provide valid credentials.";
const String kUnknownErrorOccured =
    "An unknown error occured, \ntry again later.";
const String kOtpInvalid = "OTP is invalid, please check \nand try again.";
const String kInvalidCredentials =
    'Unable to sign in with provided \ncredentials';
const String kInvalidEmail = 'Email is incorrect';
const String kInvalidUser = 'User does not exist';
const String kRequestFailed = 'Request failed, please \ntry again later.';
const String kSuccessOtp = 'OTP has been sent successfully.';
const String kFailedPasswordChange = 'Password could not be changed.';
const String kInternetErrorMessage =
    'Please check your internet connection and try again';

// Padding
const double kPaddingTwo = 2.0;
const double kPaddingFOUR = 4.0;
const double kPaddingFIVE = 5.0;
const double kPaddingSIX = 6.0;
const double kPaddingXXS = 8.0;
const double kPaddingSS = 10.0;
const double kPaddingS = 12.0;
const double kPaddingThirteen = 13.0;
const double kPaddingM = 14.0;
const double kPaddingMM = 16.0;
const double kPaddingL = 18.0;
const double kPaddingXL = 20.0;
const double kPaddingTF = 25.0;
const double kPaddingTH = 30.0;
const double kPaddingXXL = 32.0;
const double kPaddingTHIRTYFIVE = 35.0;
const double kPaddingFORTY = 40.0;
const double kPaddingF = 50.0;
const double kPaddingFF = 55.0;
const double kPaddingSIXTY = 60.0;
const double kPaddingXXXL = 65.0;
const double kPaddingSF = 75.0;
const double kPaddingE = 80.0;
const double kPaddingH = 100.0;

// Spacing
const double kSpaceXX = 5.0;
const double kSpaceXXS = 8.0;
const double kSpaceSS = 10.0;
const double kSpaceS = 12.0;
const double kSpaceM = 14.0;
const double kSpaceMM = 16.0;
const double kSpaceL = 18.0;
const double kSpaceXL = 20.0;
const double kSpaceXXL = 32.0;

//font sizes
const double kFontVVS = 8;
const double kFontVS = 10;
const double kFontXS = 11;
const double kFontSS = 12.0;
const double kFontSSS = 13.0;
const double kFontS = 14.0;
const double kFontSL = 15.0;
const double kFontXSL = 18.0;
const double kFontM = 20.0;
const double kFontL = 22.0;
const double kFontXL = 28.0;
const double kFontXLL = 30.0;

//fontstyles
const TextStyle kTitleSmallTextStyle = TextStyle(
  color: kGrey,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w100,
);

TextStyle kTitleSmallTextStyleDark = const TextStyle(
  color: kGrey,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w500,
);

const TextStyle kLargeTextStyle = TextStyle(
  color: kGrey,
  fontSize: kFontXLL,
  fontWeight: FontWeight.w700,
);

const TextStyle kLargeTextStyleTwo = TextStyle(
  color: kMainColorDark,
  fontSize: kFontXLL,
  fontWeight: FontWeight.w700,
);

const TextStyle kLargeTextStyleDark = TextStyle(
  color: kWhite,
  fontSize: kFontXLL,
  fontWeight: FontWeight.w700,
);

TextStyle kLabelMediumTextStyle = const TextStyle(
  color: kBlack,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w500,
);

const TextStyle kLabelMediumTextStyleDark = TextStyle(
  color: kWhite,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w500,
);

TextStyle kSubtitleTextStyle = const TextStyle(
  color: kBlack,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w400,
);

TextStyle kSubtitleTextStyleDark = const TextStyle(
  color: kBlack,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w400,
);

const TextStyle kRegularTextStyle = TextStyle(
  color: kDarkGrey,
  fontSize: kFontSL,
  fontWeight: FontWeight.w400,
  height: 1.3,
);

const TextStyle kRegularTextStyleDark = TextStyle(
  color: kLightGreyThree,
  fontSize: kFontSL,
  fontWeight: FontWeight.w400,
  height: 1.3,
);

TextStyle kSmallTextStyle = const TextStyle(
  color: kBlack,
  fontSize: kFontSL,
  fontWeight: FontWeight.w500,
);
TextStyle kSmallTextStyleDark = const TextStyle(
  color: kBlack,
  fontSize: kFontSL,
  fontWeight: FontWeight.w500,
);

TextStyle kFormHeaderTextStyle = const TextStyle(
  color: kBlack,
  fontSize: kFontSL,
  fontWeight: FontWeight.w500,
);

TextStyle kFormHeaderTextStyleDark = const TextStyle(
  color: kBlack,
  fontSize: kFontSL,
  fontWeight: FontWeight.w500,
);

TextStyle kBodyMediumTextStyle = const TextStyle(
  color: kBlack,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w500,
);

TextStyle kBodyMediumTextStyleDark = const TextStyle(
  color: kBlack,
  fontSize: kFontXSL,
  fontWeight: FontWeight.w500,
);

const TextStyle kVerySmallTextStyle = TextStyle(
  color: kBlack,
  fontSize: kFontXS,
  fontWeight: FontWeight.w400,
  height: 1.0,
);

const TextStyle kTitleLargeTextStyleTwo = TextStyle(
  color: kBlack,
  fontSize: kFontXLL,
  fontWeight: FontWeight.w700,
);

const TextStyle kLargeTextStyleDarkTwo = TextStyle(
  color: kWhite,
  fontSize: kFontXLL,
  fontWeight: FontWeight.w700,
);

TextStyle kLabelSmallTextStyle = const TextStyle(
    fontWeight: FontWeight.w500, fontSize: kFontSL, color: kBlack);

TextStyle kLabelSmallTextStyleDark = const TextStyle(
    fontWeight: FontWeight.w500, fontSize: kFontS, color: kBlack);

TextStyle kDisplayMediumTextStyle = const TextStyle(
    fontWeight: FontWeight.w500, fontSize: kFontSL, color: kBlack);

TextStyle kDisplayMediumTextStyleDark = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: kFontS,
  color: kBlack,
);

TextStyle kBottomBarText = const TextStyle(
    fontWeight: FontWeight.w400, fontSize: kFontSL, color: kBlack);

TextStyle kBottomBarTextDark = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: kFontSL,
  color: kBlack,
);

TextStyle kLabelMeduimText = const TextStyle(
    fontWeight: FontWeight.w500, fontSize: kFontXSL, color: kBlack);

TextStyle kLabelMeduimTextDark = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: kFontXSL,
  color: kBlack,
);

const TextStyle kErrorTextStyle = TextStyle(
  color: kRed,
  fontSize: kFontVS,
  fontWeight: FontWeight.w400,
  height: 1.0,
);

const carouselList = [
  kps5,
  kWatch,
];

Widget horizontalSpaceTiny = const SizedBox(width: 5.0);
Widget horizontalSpaceSmall = const SizedBox(width: 10.0);
Widget horizontalSpaceRegular = const SizedBox(width: 18.0);
Widget horizontalSpaceMedium = const SizedBox(width: 25.0);
Widget horizontalSpaceLarge = const SizedBox(width: 50.0);

// Vertical Spacing
Widget verticalSpaceTiny = const SizedBox(height: 5.0);
Widget verticalSpaceSmall = const SizedBox(height: 10.0);
Widget verticalSpaceRegular = const SizedBox(height: 18.0);
Widget verticalSpaceMedium = const SizedBox(height: 25);
Widget verticalSpaceLarge = const SizedBox(height: 50.0);
Widget verticalSpaceMassive = const SizedBox(height: 120.0);

EdgeInsets safeAreaPadding =
    EdgeInsets.fromLTRB(16, 50, 16, Platform.isIOS ? 30 : 0);
