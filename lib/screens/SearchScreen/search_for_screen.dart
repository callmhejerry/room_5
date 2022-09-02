import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchForScreen extends StatelessWidget {
  const SearchForScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Which list do you want to search?",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            SizedBox(
              height: 40.h,
            ),
            SearchListButton(
              child: "Search for lodges",
              icon: Icon(
                Icons.house_outlined,
                size: 27,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            SearchListButton(
              child: "Search for rooms",
              icon: Icon(
                FluentIcons.bed_16_regular,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            SearchListButton(
              child: "Search for roommmates",
              icon: Icon(
                FluentIcons.people_12_regular,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SearchListButton extends StatelessWidget {
  final VoidCallback onTap;
  final String child;
  final Icon icon;
  const SearchListButton({
    Key? key,
    required this.child,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 16.w),
          Text(
            child,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}
