import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customWidget/custom_drop_down_button.dart';
import 'customWidget/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<String> level = [
    "100 Level",
    "200 Level",
    "300 Level",
    "400 Level",
    "500 Level",
    "600 Level",
    "Masters",
    "Phd",
  ];

  List<String> gender = ["male", "female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Sign Up",
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
                      "Have an account?",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign In",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                const CustomTextField(
                  hintText: "Chinedu Jeremiah",
                  inputType: "Name",
                ),
                const CustomTextField(
                  hintText: "example@gmail.com",
                  inputType: "Email",
                ),
                CustomDropDownButton(
                    dropDownList: level,
                    inputType: "Level",
                    hintText: "100 Level"),
                CustomDropDownButton(
                    dropDownList: gender,
                    inputType: "Gender",
                    hintText: "male"),
                const CustomTextField(
                  inputType: "Course",
                  hintText: "Computer Science",
                ),
                const CustomTextField(
                  inputType: "Password",
                  obscureText: true,
                ),
                const CustomTextField(
                  inputType: "Confirm Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: 8.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Center(child: Text("Create account")),
                ),
                SizedBox(
                  height: 24.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
