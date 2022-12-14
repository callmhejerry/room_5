import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/roommate_availability_widget.dart';
import 'widgets/user_profile_widget.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 16.r,
            ),
            const UserProfileWidget(),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Tokens",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 12.w),
                      child: Text(
                        "12",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: const RoommateAvailabiltyWidget(),
            ),
            SizedBox(
              height: 4.h,
            ),
            const Divider(),
            SizedBox(
              height: 4.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(
                Icons.book,
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              title: const Text("My listing"),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(Icons.token),
              title: const Text("Buy tokens"),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(
                Icons.credit_card,
              ),
              title: const Text("Payment methods"),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(
                FluentIcons.payment_16_filled,
              ),
              title: const Text("Pay rent"),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text("Settings"),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
