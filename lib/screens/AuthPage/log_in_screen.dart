import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/AuthPage/customWidget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 24.h),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Text(
                    "Dont have an account?",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),

              const CustomTextField(
                inputType: "Email",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 16.h,
              ),
              const CustomTextField(
                inputType: "Password",
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 11,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
