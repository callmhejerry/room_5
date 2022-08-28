import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_5/screens/HomeScreen/promoted_room.dart';
import 'package:room_5/screens/HomeScreen/roommate_card.dart';

import 'lodge_card.dart';
import 'place_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _places = const [
    {
      "name": "Aroma",
      "image": "aroma.jpg",
    },
    {
      "name": "Yahoo junction",
      "image": "yahoo.jpg",
    },
    {
      "name": "Next level",
      "image": "nextlevel.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 21,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.home_12_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.note_16_regular,
            ),
            label: "Shortlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.pen_20_regular,
            ),
            label: "Post Ad",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.mail_16_regular,
            ),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentIcons.more_horizontal_20_filled,
            ),
            label: "More",
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Day!",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                      Text(
                        "Welcome to ROOM 5!",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Looking for your perfect roommate?",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      const AssetImage("assets/images/boyAvatar.png"),
                  radius: 16.r,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: InkWell(
              child: Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 12.r),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 22.r,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Search...",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 22.r,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Explore our most popular places",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 190.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return PlaceCard(
                    image: _places[index]["image"]!,
                    placeName: _places[index]["name"]!,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 8.w,
                  );
                },
                itemCount: _places.length,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.38),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Promoted List for Room",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    // color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Best rooms that match your needs",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 290.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  PromotedRooms(),
                  PromotedRooms(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.38),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Available Lodges",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    // color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 260.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const LodgeCard(),
                  SizedBox(width: 16.w),
                  const LodgeCard(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.38),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Available Roommates",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    // color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Best roommates that match your needs",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 230.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const RoomMateCard(),
                  SizedBox(
                    width: 16.w,
                  ),
                  const RoomMateCard(),
                  SizedBox(
                    width: 16.w,
                  ),
                  const RoomMateCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
