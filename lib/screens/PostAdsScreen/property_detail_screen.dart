import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyDetailScreen extends StatefulWidget {
  const PropertyDetailScreen({super.key});

  @override
  State<PropertyDetailScreen> createState() => _PropertyDetailScreenState();
}

class _PropertyDetailScreenState extends State<PropertyDetailScreen> {
  final List<Map<String, dynamic>> _roomType = [
    {
      "type": "private room",
      "selected": false,
    },
    {
      "type": "Shared room",
      "selected": false,
    },
    {
      "type": "Student hostel",
      "selected": false,
    }
  ];
  final List<Map<String, dynamic>> _gender = [
    {
      "type": "male",
      "selected": false,
    },
    {
      "type": "female",
      "selected": false,
    },
  ];

  final List<Map<String, dynamic>> _houseAmenties = [
    {
      "type": "Generator",
      "selected": false,
    },
    {
      "type": "Bed stand",
      "selected": false,
    },
    {
      "type": "Wardrobe",
      "selected": false,
    },
    {
      "type": "Table and Chair",
      "selected": false,
    },
    {
      "type": "Televison",
      "selected": false,
    },
  ];
  String? _roomTypeValue;
  String? _genderValue;
  final List<String> _houseAmentiesList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 2: Property Detail"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Type your property detail",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 24.h,
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
                      activeColor: Theme.of(context).colorScheme.secondary,
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
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Who do you want to live with?",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8.h,
            ),
            ..._gender.map(
              (gender) {
                return Row(
                  children: [
                    Checkbox(
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      activeColor: Theme.of(context).colorScheme.secondary,
                      value: gender["selected"],
                      onChanged: (bool? newValue) {
                        setState(() {
                          for (var gender in _gender) {
                            gender["selected"] = false;
                          }
                          gender["selected"] = newValue;
                          _genderValue = gender["type"];
                        });
                      },
                    ),
                    Text(
                      gender["type"],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                );
              },
            ).toList(),
            SizedBox(
              height: 16.h,
            ),
            Text(
              "House amenities",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8.h,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.w,
                mainAxisSpacing: 8.w,
              ),
              itemCount: _houseAmenties.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Checkbox(
                      value: _houseAmenties[index]["selected"],
                      onChanged: (value) {
                        _houseAmenties[index]["selected"] = value;
                      },
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
