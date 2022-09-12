import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> _places = [
    "Aroma",
    "Next level",
    "Yahoo junction",
    "Miracle junction",
    "Amansea",
    "Tempsite",
    "Book foundation",
    "Dynamo junction",
    "Tezzers junction",
    "Divine junction",
  ];

  final List<Map<String, dynamic>> _roomType = [
    {
      "type": "private room",
      "selected": false,
    },
    {
      "type": "Shared room",
      "selected": false,
    }
  ];
  String? _placeValue;
  String? _roomTypeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("reset"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Set your preference!",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "You can change your preferences at any time.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Location",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 12.h,
            ),
            DropdownButtonFormField(
              items: _places
                  .map(
                    (place) => DropdownMenuItem<String>(
                      value: place,
                      child: Text(place),
                    ),
                  )
                  .toList(),
              hint: Text(
                "Next level junction",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              icon: Icon(
                Icons.place,
                size: 21,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onChanged: (String? newValue) {
                _placeValue = newValue;
              },
              value: _placeValue,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Budget",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 12.h,
            ),
            const BudgetWidget(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Room type",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ..._roomType.map(
              (roomType) {
                return Row(
                  children: [
                    Checkbox(
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      value: roomType["selected"],
                      onChanged: (bool? newValue) {
                        setState(() {
                          for (var roomType in _roomType) {
                            roomType["selected"] = false;
                          }

                          roomType["selected"] = newValue;
                          _roomTypeValue = roomType["type"];
                        });
                      },
                    ),
                    Text(
                      roomType["type"],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                );
              },
            ).toList(),
            SizedBox(height: 30.h),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Search"),
            ),
          ],
        ),
      ),
    );
  }
}

class Budget {
  RangeValues rangeValues = const RangeValues(100000, 170000);
}

class BudgetWidget extends StatefulWidget {
  const BudgetWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BudgetWidget> createState() => _BudgetWidgetState();
}

class _BudgetWidgetState extends State<BudgetWidget> {
  Budget rangeValues = Budget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.r, top: 8.r),
      // height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          style: BorderStyle.solid,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RangeSlider(
            values: rangeValues.rangeValues,
            activeColor: Theme.of(context).colorScheme.secondary,
            inactiveColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff1e1e1e)
                : const Color.fromARGB(255, 219, 219, 219),
            onChanged: (RangeValues value) {
              setState(() {
                rangeValues.rangeValues = value;
              });
            },
            max: 400000,
            min: 50000,
            divisions: 5000,
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              children: [
                Expanded(
                  child: PriceBox(
                    rangeValues:
                        rangeValues.rangeValues.start.truncate().toString(),
                    name: "Min price",
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                const Text(
                  "-",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: PriceBox(
                    rangeValues:
                        rangeValues.rangeValues.end.truncate().toString(),
                    name: "Max price",
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

class PriceBox extends StatelessWidget {
  const PriceBox({
    Key? key,
    required this.rangeValues,
    required this.name,
  }) : super(key: key);

  final String rangeValues;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xff1e1e1e)
          : const Color.fromARGB(255, 219, 219, 219),
      height: 80.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 16.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: Text(
              "₦ $rangeValues",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
