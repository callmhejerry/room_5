import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/SearchScreen/custom_search.dart';

class CustomPersistentHeader extends SliverPersistentHeaderDelegate {
  final String text;
  const CustomPersistentHeader({required this.text});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.only(left: 12.w, top: 10.h, bottom: 10.h),
      color: Theme.of(context).colorScheme.background,
      child: CustomSearchTextField(text: text),
    );
  }

  @override
  double get maxExtent => 70.h;

  @override
  double get minExtent => 70.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
