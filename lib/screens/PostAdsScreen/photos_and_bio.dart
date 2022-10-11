import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/PostAdsScreen/widget/add_photo_widget.dart';

class PhotosAndBioScreen extends StatelessWidget {
  const PhotosAndBioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 4: Photos and Bio"),
        bottom: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            1,
          ),
          child: LinearProgressIndicator(
            value: 0.8,
            color: Theme.of(context).colorScheme.secondary,
            minHeight: 1,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        children: [
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Add some photos *",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 16.h,
          ),
          const AddPhotosWidget(),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "Give your listing a title *",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 8.h,
          ),
          TextField(
            maxLength: 50,
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.surface,
              hintText: "Beautiful large apartment near aroma junction",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Give a short description *",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 8.h,
          ),
          TextField(
            maxLines: 4,
            maxLength: 200,
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.surface,
              hintText:
                  "Dont share your personal details for your own security",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Publish Room Listing",
              ))
        ],
      ),
    );
  }
}
