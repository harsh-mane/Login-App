import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class TOutlinedButtonTheme {
  // Private constructor to prevent instantiation
  TOutlinedButtonTheme._();

  // Light theme
  static final OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  // Dark theme
   static final OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  
}