import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/AuthPage/customWidget/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text("Forgot password"),
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Enter your email address and we will send you an email with new password",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomTextField(
                inputType: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Send"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
