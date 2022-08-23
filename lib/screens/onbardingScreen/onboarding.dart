import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, dynamic>> onboardingScreens = [
    {
      "title": "Know Before you meet",
      "image": "Online wishes-bro.png",
      "details":
          "Talk to your roommate,know each other and make decision together",
    },
    {
      "title": "Search Roommates",
      "image": "House restyling-cuate.png",
      "details": "Choose to live with people who match your preferences.",
    },
    {
      "title": "Perfect Rooms",
      "image": "Clutter-amico.png",
      "details": "Find a room that fits your lifeStyle",
    }
  ];

  late final List<Image> _images;
  int _currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _images = [
      Image.asset("assets/images/Online wishes-bro.png"),
      Image.asset("assets/images/House restyling-cuate.png"),
      Image.asset("assets/images/Clutter-amico.png"),
    ];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var element in _images) {
      precacheImage(element.image, context);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _currentPage == 2
              ? const SizedBox()
              : TextButton(
                  onPressed: () {
                    // log("Navigate");
                  },
                  child: const Text("Skip"),
                ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingScreens.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Expanded(
                        child: _images[index],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Text(
                        onboardingScreens[index]["title"],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        onboardingScreens[index]["details"],
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: onboardingScreens.length,
            effect: JumpingDotEffect(
              activeDotColor: Theme.of(context).colorScheme.secondary,
              verticalOffset: 10.h,
              spacing: 5.w,
              dotWidth: 8.r,
              dotHeight: 8.r,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          TextButton(
            onPressed: () {
              if (_currentPage == 2) {
                // log("navigate to a new page");
              } else {
                _pageController.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn);
              }
            },
            child: Text(_currentPage == 2 ? "Get Started" : "Next"),
          ),
          SizedBox(
            height: 60.h,
          ),
        ],
      ),
    );
  }
}
