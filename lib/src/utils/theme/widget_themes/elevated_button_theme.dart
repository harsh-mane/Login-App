import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class TElevatedButtonTheme {
  // Private constructor to prevent instantiation
  TElevatedButtonTheme._();

  // Light theme
  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  // Dark theme
  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}