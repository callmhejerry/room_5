import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static ElevatedButtonThemeData lightElevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: lightColorScheme.onPrimary,
      backgroundColor: lightColorScheme.primary,
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
      foregroundColor: darkColorScheme.onPrimary,
      backgroundColor: darkColorScheme.primary,
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
      foregroundColor: lightColorScheme.primary,
      animationDuration: const Duration(milliseconds: 500),
      elevation: 0,
      maximumSize: Size(double.infinity, 48.h),
      textStyle: TextStyle(
        height: 1.45,
        fontSize: 11,
        letterSpacing: 0.5.w,
        fontWeight: FontWeight.w500,
      ),
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
      foregroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 500),
      elevation: 0,
      maximumSize: Size(double.infinity, 48.h),
      textStyle: TextStyle(
        height: 1.45,
        fontSize: 11,
        letterSpacing: 0.5.w,
        fontWeight: FontWeight.w500,
      ),
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
      foregroundColor: lightColorScheme.secondary,
      textStyle: lightTextTheme.labelLarge,
    ),
  );
  static TextButtonThemeData darktextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: darkColorScheme.secondary,
      textStyle: lightTextTheme.labelLarge,
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
    tertiary: const Color.fromARGB(255, 179, 98, 98),
    brightness: Brightness.dark,
    onTertiaryContainer: const Color(0xff710505),
    tertiaryContainer: const Color(0xffE2CDCD),
    error: const Color(0xFFFF6969),
    secondary: const Color(0xFF9bd5a8),
    onPrimary: Colors.black,
    onError: Colors.black,
    secondaryContainer: const Color(0xFFD2ECDA),
    surface: const Color(0xff1e1e1e),
    onBackground: Colors.white.withOpacity(.87),
    onSecondary: const Color(0xFF030303),
    onSurface: Colors.white.withOpacity(.60),
  );

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: lightColorScheme.surface,
    elevation: 0,
    titleTextStyle:
        lightTextTheme.titleMedium!.copyWith(color: lightColorScheme.primary),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: const Color(0xff1e1e1e),
    elevation: 0,
    titleTextStyle: lightTextTheme.titleMedium!.copyWith(
      color: darkColorScheme.onBackground,
      fontWeight: FontWeight.w500,
    ),
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
      const BottomNavigationBarThemeData(
    elevation: 0.5,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color.fromARGB(255, 54, 54, 54),
  );

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      height: 1.12,
      fontSize: 57.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontSize: 45.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.15,
    ),
    displaySmall: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      height: 1.22,
    ),
    headlineLarge: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.28,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.333,
    ),
    titleLarge: TextStyle(
      fontSize: 22.sp,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.15.w,
      fontWeight: FontWeight.w400,
      height: 1.333,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.1.w,
      fontWeight: FontWeight.w500,
      height: 1.4,
    ),
    labelLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1.w,
      height: 1.42,
    ),
    labelMedium: TextStyle(
      height: 1.33,
      fontSize: 12.sp,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      height: 1.45,
      fontSize: 11.sp,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.5.w,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.25.w,
      fontWeight: FontWeight.w400,
      height: 1.42,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
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
    outlinedButtonTheme: lightOutLineButtonTheme,
    primaryColor: lightColorScheme.primary,
    fontFamily: "Poppins",
    textButtonTheme: lighttextButtonTheme,
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
    appBarTheme: lightAppBarTheme,
    useMaterial3: true,
    scaffoldBackgroundColor: lightColorScheme.background,
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
    scaffoldBackgroundColor: darkColorScheme.background,
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
