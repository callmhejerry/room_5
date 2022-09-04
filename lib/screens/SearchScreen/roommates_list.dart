import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/HomeScreen/roommate_card.dart';

import '../../customWidget/sliver_header.dart';

class RoomMatesList extends StatelessWidget {
  const RoomMatesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            const SliverAppBar(
              title: Text("Search for roommates"),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 6.h,
              ),
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
                  "Latest roommates",
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
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SliverGrid(
                delegate: SliverChildListDelegate([
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                  const RoomMateCard(),
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.w,
                  mainAxisExtent: 230.h,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 6.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
