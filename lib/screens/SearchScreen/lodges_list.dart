import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/HomeScreen/lodge_card.dart';

import '../../customWidget/sliver_header.dart';

class LodgesList extends StatelessWidget {
  const LodgesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            const SliverAppBar(
              title: Text("Search for lodges"),
            ),
            const SliverPersistentHeader(
              delegate: CustomPersistentHeader(text: "Search in roommates"),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            SliverPadding(
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Latest lodges",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            SliverFillRemaining(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) => const LodgeCard(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16.h,
                ),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
