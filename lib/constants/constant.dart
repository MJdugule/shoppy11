//colors
import 'dart:io';

import 'package:flutter/material.dart';

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
