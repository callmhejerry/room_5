import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoommateAvailabiltyWidget extends StatefulWidget {
  const RoommateAvailabiltyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RoommateAvailabiltyWidget> createState() =>
      _RoommateAvailabiltyWidgetState();
}

class _RoommateAvailabiltyWidgetState extends State<RoommateAvailabiltyWidget> {
  bool available = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 16.r, right: 4.r),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 49, 97, 60),
          style: BorderStyle.solid,
          width: 1.r,
        ),
        borderRadius: BorderRadius.circular(10.r),
        color: const Color.fromARGB(255, 211, 230, 216),
      ),
      child: Row(
        children: [
          const Icon(
            FluentIcons.people_12_regular,
            color: Colors.black,
          ),
          SizedBox(
            width: 16.w,
          ),
          const Text(
            "Set availability as roommate",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          const Spacer(),
          AnimatedSwitcher(
            duration: const Duration(
              milliseconds: 500,
            ),
            child: Switch.adaptive(
              onChanged: (value) {
                setState(() {
                  available = value;
                });
              },
              value: available,
              activeColor: const Color.fromARGB(255, 96, 136, 108),
            ),
          )
        ],
      ),
    );
  }
}
