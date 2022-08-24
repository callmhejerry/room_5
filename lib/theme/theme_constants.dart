import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static ElevatedButtonThemeData lightElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.black,
      maximumSize: Size(double.infinity, 48.h),
      minimumSize: Size(165.w, 48.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      elevation: 0,
      textStyle: TextStyle(
        height: 1.45,
        fontSize: 11,
        letterSpacing: 0.5.w,
        fontWeight: FontWeight.w500,
      ),
      animationDuration: const Duration(milliseconds: 500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
    ),
  );

//OUTLINED BUTTON
  static OutlinedButtonThemeData lightOutLineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      animationDuration: const Duration(milliseconds: 500),
      elevation: 0,
      maximumSize: Size(double.infinity, 48.h),
      textStyle: TextStyle(
        height: 1.45,
        fontSize: 11,
        letterSpacing: 0.5.w,
        fontWeight: FontWeight.w500,
      ),
      primary: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      minimumSize: Size(165.w, 48.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
        side: BorderSide(
          width: 1.w,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );

  static SnackBarThemeData lightSnackBarTheme = SnackBarThemeData(
    elevation: 1,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
    ),
  );

  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: lightTextTheme.labelLarge,
      primary: lightColorScheme.secondary,
    ),
  );

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF030303),
    onPrimary: Colors.white,
    tertiary: Color(0xFF9B4F4F),
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xffE2CDCD),
    onTertiaryContainer: Color(0xff710505),
    primaryContainer: Color(0xff4E4E4E),
    secondary: Color(0xFF61BB7F),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFFB4747),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFF9F9F9),
    onBackground: Color(0xFF888888),
    surface: Color(0xFFF9F9F9),
    onSurface: Color(0xFF888888),
    secondaryContainer: Color(0xFFD2ECDA),
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    background: Color(0xFF4E4E4E),
    primary: Colors.white,
    brightness: Brightness.dark,
    error: Color(0xFFF8A0A0),
    secondary: Color(0xFF61BB7F),
    onPrimary: Colors.black,
    onError: Colors.white,
    secondaryContainer: Color(0xff61BB7F),
    surface: Color(0xFF030303),
    onBackground: Color(0xffF9F9F9),
    onSecondary: Color(0xFF030303),
    onSurface: Colors.white,
  );

  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
    elevation: 0.5,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
  );

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle(
      height: 1.12,
      fontSize: 57,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: const TextStyle(
      fontSize: 45,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.15,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      height: 1.22,
    ),
    headlineLarge: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.28,
    ),
    headlineSmall: const TextStyle(
      fontSize: 24,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.333,
    ),
    titleLarge: const TextStyle(
      fontSize: 22,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      letterSpacing: 0.15.w,
      fontWeight: FontWeight.w400,
      height: 1.333,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      letterSpacing: 0.1.w,
      fontWeight: FontWeight.w500,
      height: 1.4,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1.w,
      height: 1.42,
    ),
    labelMedium: TextStyle(
      height: 1.33,
      fontSize: 12,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      height: 1.45,
      fontSize: 11,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      letterSpacing: 0.25.w,
      fontWeight: FontWeight.w400,
      height: 1.42,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w400,
      height: 1.33,
    ),
  );

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.all(12.r),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      gapPadding: 8.0,
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: Color(0xFF61BB7F),
      ),
    ),
    labelStyle: TextStyle(
      fontSize: 12,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w400,
      height: 1.33,
    ),
    hintStyle: TextStyle(
      fontSize: 11,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w400,
      // height: 1.33,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      gapPadding: 8.0,
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: Color(0xFFFB4747),
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      gapPadding: 8.0,
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: 1,
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: lightElevatedButtonThemeData,
    primaryColor: const Color(0xFF030303),
    fontFamily: "Raleway",
    textButtonTheme: textButtonTheme,
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: lightTextTheme,
    inputDecorationTheme: lightInputDecorationTheme,
    bottomNavigationBarTheme: lightBottomNavigationBarTheme,
    snackBarTheme: lightSnackBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    fontFamily: "Rubik",
    brightness: Brightness.dark,
    textTheme: lightTextTheme,
    useMaterial3: true,
  );
}
