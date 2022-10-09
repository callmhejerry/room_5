import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/AuthPage/customWidget/custom_drop_down_button.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final List<String> _places = [
    "Aroma",
    "Next level",
    "Yahoo junction",
    "Miracle junction",
    "Amansea",
    "Tempsite",
    "Book foundation",
    "Dynamo junction",
    "Tezzers junction",
    "Divine junction",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 1: Location"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Post an ad to find your next roommate!",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Name of the lodge",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(
              height: 8.h,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "abc lodge",
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomDropDownButton(
              dropDownList: _places,
              inputType: "Location",
            ),
            SizedBox(
              height: 64.h,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
