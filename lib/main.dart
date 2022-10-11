import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/PostAdsScreen/photos_and_bio.dart';

import 'package:room_5/theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Room 5',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          themeMode: ThemeMode.dark,
          darkTheme: CustomTheme.darkTheme,
          home: child,
        );
      },
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: const PhotosAndBioScreen(),
    );
  }
}
