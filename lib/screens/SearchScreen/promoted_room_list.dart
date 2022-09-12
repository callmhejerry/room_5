import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/HomeScreen/promoted_room.dart';

import '../../customWidget/sliver_header.dart';

class PromotedRoomList extends StatelessWidget {
  const PromotedRoomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            const SliverAppBar(
              title: Text("Search for promoted rooms"),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 6.h,
              ),
            ),
            const SliverPersistentHeader(
              delegate:
                  CustomPersistentHeader(text: "Search in promoted rooms"),
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
                  "Latest rooms listing",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                  const PromotedRooms(),
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.w,
                  mainAxisExtent: 285.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
