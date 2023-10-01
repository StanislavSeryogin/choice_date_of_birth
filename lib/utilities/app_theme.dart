import 'package:choice_date_of_birth/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Here we can modify our app, add more feature on design, light and dark theme for example.

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: FlexThemeData.dark(
     ...
    ),
    AppTheme.lightTheme: FlexThemeData.light(
      ...
    ),
  };
}
*/

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.kBackgroundColor,
    fontFamily: GoogleFonts.nunito().fontFamily,
  );
}