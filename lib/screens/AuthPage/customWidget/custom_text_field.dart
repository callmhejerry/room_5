import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String inputType;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    required this.inputType,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputType,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          child: TextFormField(
            obscureText: obscureText ?? false,
            obscuringCharacter: "•",
            keyboardType: keyboardType,
            style: Theme.of(context).textTheme.labelMedium!,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              constraints: BoxConstraints(
                maxHeight: 45.h,
                minHeight: 35.h,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.h,
        )
      ],
    );
  }
}