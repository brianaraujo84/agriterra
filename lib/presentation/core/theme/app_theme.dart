import 'package:agriterra/presentation/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: Colors.white,
    textSelectionHandleColor: accentColor,
    colorScheme: ColorScheme.light().copyWith(
      primary: accentColor,
    ),
    iconTheme: IconThemeData(
      color: Colors.black54,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
    ),
    textTheme: ThemeData.light()
        .textTheme
        .apply(
          fontFamily: "Poppins",
        )
        .copyWith(
          caption: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: textLightColor,
          ),
        ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: Colors.transparent,
    colorScheme: ColorScheme.dark().copyWith(
      primary: accentColor,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textSelectionHandleColor: accentColor,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentColor,
    ),
    textTheme: ThemeData.dark()
        .textTheme
        .apply(
          fontFamily: "Poppins",
        )
        .copyWith(
          caption: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: textLightColor,
          ),
        ),
  );
}
