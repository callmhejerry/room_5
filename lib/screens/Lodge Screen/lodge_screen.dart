import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LodgeScreen extends StatelessWidget {
  const LodgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child: PageView(
                    controller: pageController,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.30),
                        ),
                        child: Image.asset(
                          "assets/images/room1.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.30),
                        ),
                        child: Image.asset(
                          "assets/images/yahoo.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                // Positioned.fill(
                //   child: DecoratedBox(
                //     decoration: BoxDecoration(
                //       color: Colors.black.withOpacity(.30),
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 12.h,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 2,
                    effect: SlideEffect(
                      dotColor: Theme.of(context).colorScheme.surface,
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Positioned(
                  top: 16.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Next Level Lodge",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const Text("Next level Junction, awka."),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.place,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 19.r,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Details",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Featuring an outdoor parking space.Next level lodge is located in next level awka, so there is proximity to school.Free wifi is available, there is steady power supply as we have our own transformer.The rooms are spacious and each has a wardrobe where you can keep things",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Contact",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    ContactWidget(
                      contact: "Next level junction, awka, anambra.",
                      icon: Icon(
                        Icons.place,
                        size: 19.r,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    ContactWidget(
                      contact: "Nextlevellodge@gmail.com",
                      icon: Icon(
                        Icons.email,
                        size: 19.r,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    ContactWidget(
                      contact: "09032435493",
                      icon: Icon(
                        Icons.phone,
                        size: 19.r,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "₦150,000",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        TextSpan(
                          text: "/year",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Book Room"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final String contact;
  final Widget icon;
  const ContactWidget({
    Key? key,
    required this.contact,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10.h,
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 12.w,
          ),
          Text(
            contact,
            // style: Theme.of(context).textTheme.bodyMedium,/
          ),
        ],
      ),
    );
  }
}
