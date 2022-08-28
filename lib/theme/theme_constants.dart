import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static ElevatedButtonThemeData lightElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      onPrimary: lightColorScheme.onPrimary,
      primary: lightColorScheme.primary,
      maximumSize: Size(double.infinity, 48.h),
      minimumSize: Size(165.w, 48.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      elevation: 0,
      textStyle: lightTextTheme.labelLarge,
      animationDuration: const Duration(milliseconds: 500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
    ),
  );
  static ElevatedButtonThemeData darkElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      onPrimary: darkColorScheme.onPrimary,
      primary: darkColorScheme.primary,
      maximumSize: Size(double.infinity, 48.h),
      minimumSize: Size(165.w, 48.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      elevation: 0,
      textStyle: lightTextTheme.labelLarge,
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
      primary: lightColorScheme.primary,
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
  static OutlinedButtonThemeData darkOutLineButtonTheme =
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
          color: darkColorScheme.primary,
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

  static TextButtonThemeData lighttextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: lightTextTheme.labelLarge,
      primary: lightColorScheme.secondary,
    ),
  );
  static TextButtonThemeData darktextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: lightTextTheme.labelLarge,
      primary: darkColorScheme.secondary,
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
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Color(0xFF888888),
    secondaryContainer: Color(0xFFD2ECDA),
  );

  static ColorScheme darkColorScheme = ColorScheme(
    background: const Color(0xFF121212),
    primary: Colors.white,
    // primaryContainer: Color(0xff55B575),
    tertiary: const Color(0xFF9B4F4F),
    brightness: Brightness.dark,
    onTertiaryContainer: const Color(0xff710505),
    tertiaryContainer: const Color(0xffE2CDCD),
    error: const Color(0xFFFF6969),
    secondary: const Color(0xFF9bd5a8),
    onPrimary: Colors.black,
    onError: Colors.black,
    secondaryContainer: const Color(0xff128c3e),
    surface: const Color(0xff1e1e1e),
    onBackground: Colors.white.withOpacity(.87),
    onSecondary: const Color(0xFF030303),
    onSurface: Colors.white.withOpacity(.60),
  );

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: lightColorScheme.surface,
    elevation: 0,
    titleTextStyle:
        lightTextTheme.titleLarge!.copyWith(color: lightColorScheme.primary),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: const Color(0xff1e1e1e),
    elevation: 0,
    titleTextStyle:
        lightTextTheme.titleLarge!.copyWith(color: darkColorScheme.onSurface),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    elevation: 0.5,
    type: BottomNavigationBarType.fixed,
    backgroundColor: lightColorScheme.surface,
  );

  static BottomNavigationBarThemeData darkBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    elevation: 0.5,
    type: BottomNavigationBarType.fixed,
    backgroundColor: darkColorScheme.surface,
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
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: lightColorScheme.secondary,
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
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: lightColorScheme.error,
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
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.all(12.r),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      gapPadding: 8.0,
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: darkColorScheme.secondary,
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
      height: 1,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      gapPadding: 8.0,
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 1,
        color: darkColorScheme.error,
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
    primaryColor: lightColorScheme.primary,
    fontFamily: "Poppins",
    textButtonTheme: lighttextButtonTheme,
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    appBarTheme: lightAppBarTheme,
    useMaterial3: true,
    textTheme: lightTextTheme,
    inputDecorationTheme: lightInputDecorationTheme,
    bottomNavigationBarTheme: lightBottomNavigationBarTheme,
    snackBarTheme: lightSnackBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    elevatedButtonTheme: darkElevatedButtonThemeData,
    outlinedButtonTheme: darkOutLineButtonTheme,
    primaryColor: darkColorScheme.primary,
    textTheme: lightTextTheme,
    textButtonTheme: darktextButtonTheme,
    useMaterial3: true,
    bottomNavigationBarTheme: darkBottomNavigationBarTheme,
    appBarTheme: darkAppBarTheme,
    inputDecorationTheme: darkInputDecorationTheme,
  );
}
