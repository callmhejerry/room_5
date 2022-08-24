import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/AuthPage/sign_up_screen.dart';
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
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          // darkTheme: CustomTheme.darkTheme,
          home: child,
        );
      },
      designSize: const Size(375, 812),
      child: const SignUpScreen(),
    );
  }
}
