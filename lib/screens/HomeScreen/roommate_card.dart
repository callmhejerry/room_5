import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomMateCard extends StatelessWidget {
  const RoomMateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: SizedBox(
        width: 160.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/boyAvatar.png",
              fit: BoxFit.cover,
              height: 137.h,
              width: 160.w,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.r),
                color: Theme.of(context).colorScheme.secondary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jerry",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black.withOpacity(.87),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Male",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black.withOpacity(.60),
                          ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "100 Level",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black.withOpacity(.60),
                          ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Studying Computer Science",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.black.withOpacity(.60),
                          ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
