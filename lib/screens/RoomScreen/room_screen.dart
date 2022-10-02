import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RoomScreenHeader(),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  children: [
                    Text(
                      "Shared student room at Next level near Wintess Garden hotel.",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text("Next level Junction, awka.")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Divider(),
              SizedBox(
                height: 8.h,
              ),
              const RoomPropertySection(),
              SizedBox(
                height: 8.h,
              ),
              const Divider(),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const RoomOwner(),
              SizedBox(
                height: 10.h,
              ),
              const RoomDescription(),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Planning",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const Planning(),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Gallery",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 80.r,
                child: const Gallery(),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Room amenities",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const RoomAmenities(),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Suitable for",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const SuitableFor(),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Send a message request")),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomScreenHeader extends StatelessWidget {
  const RoomScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250.h,
          child: Image.asset(
            "assets/images/room1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.25),
            ),
          ),
        ),
        Positioned(
          // top: 20,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border_outlined,
                  color: Colors.white,
                ),
              ),
              // SizedBox(
              //   width: 12.w,
              // ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RoomPropertySection extends StatelessWidget {
  const RoomPropertySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8,
          childAspectRatio: 6,
        ),
        shrinkWrap: true,
        children: [
          RoomProperty(
            content: "1 Bathroom",
            icon: Icon(
              Icons.bathtub_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          RoomProperty(
            content: "1 Bed",
            icon: Icon(
              Icons.bed_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          RoomProperty(
            content: "Shared Bedroom",
            icon: Icon(
              Icons.people_alt_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          RoomProperty(
            content: "1 kitchen",
            icon: Icon(
              Icons.kitchen,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

class RoomProperty extends StatelessWidget {
  final Icon icon;
  final String content;
  const RoomProperty({
    super.key,
    required this.content,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 8.w,
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

class RoomOwner extends StatelessWidget {
  const RoomOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      height: 64.r,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: const AssetImage(
              "assets/images/jerry.jpg",
            ),
            radius: 32.r,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Chinedu Jeremiah",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Studying Computer Science",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Male",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoomDescription extends StatelessWidget {
  const RoomDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Text(
        "I have a one bedroom apartment in His Grace Lodge at Next level junction, it is well organised, ive good neighbors that dont make noise.The room is quite big enough for more than two people.",
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}

class Planning extends StatelessWidget {
  const Planning({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4,
          mainAxisSpacing: 10.w,
        ),
        shrinkWrap: true,
        children: const [
          Plan(name: "Rent", amount: "₦ 150,000"),
          Plan(name: "Light bill"),
          Plan(name: "Water bill"),
          Plan(name: "Other bills"),
        ],
      ),
    );
  }
}

class Plan extends StatelessWidget {
  final String name;
  final String? amount;
  const Plan({
    Key? key,
    required this.name,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          amount ?? "nill",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        )
      ],
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(left: 16.h),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Image.asset(
            "assets/images/room1.jpg",
            // height: 60.r,
            width: 80.r,
            fit: BoxFit.cover,
          ),
        );
      },
      // shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 10.w,
        );
      },
      itemCount: 10,
    );
  }
}

class RoomAmenities extends StatelessWidget {
  const RoomAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 5,
          mainAxisSpacing: 10,
        ),
        children: [
          Row(
            children: [
              Icon(
                Icons.wifi,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "WI-FI",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.table_restaurant_rounded,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Table and chair",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.tv_rounded,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Television",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.king_bed_outlined,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Bed stand",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.shower_rounded,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Shower",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SuitableFor extends StatelessWidget {
  const SuitableFor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 5,
          mainAxisSpacing: 10,
        ),
        children: [
          Row(
            children: [
              Icon(
                Icons.male,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(width: 8.w),
              Text(
                "Male",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                FluentIcons.hat_graduation_12_filled,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(width: 8.w),
              Text(
                "Undergraduate",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
