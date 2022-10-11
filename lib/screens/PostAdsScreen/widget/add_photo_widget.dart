import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhotosWidget extends StatelessWidget {
  const AddPhotosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.add_circle_outline_rounded,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Icon(
              Icons.add_a_photo_outlined,
              size: 40.r,
            ),
            SizedBox(height: 8.h),
            Text(
              "Upload atleast 3 photos",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Just tap to browse your gallery to\n upload photo",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
