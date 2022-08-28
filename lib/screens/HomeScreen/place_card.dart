import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceCard extends StatefulWidget {
  final String placeName;
  final String image;
  const PlaceCard({
    Key? key,
    required this.image,
    required this.placeName,
  }) : super(key: key);

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  late Image _image;
  @override
  void initState() {
    super.initState();
    _image = Image.asset(
      "assets/images/${widget.image}",
      fit: BoxFit.cover,
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(_image.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: SizedBox(
        width: 120.w,
        child: Stack(
          children: [
            Positioned.fill(
              child: _image,
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.r),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      widget.placeName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
