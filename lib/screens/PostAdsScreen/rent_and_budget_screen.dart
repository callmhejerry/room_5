import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RentAndBudgetScreen extends StatelessWidget {
  const RentAndBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Step 3: Rent & Bills"),
          bottom: PreferredSize(
            preferredSize: const Size(
              double.infinity,
              1,
            ),
            child: LinearProgressIndicator(
              value: 0.6,
              color: Theme.of(context).colorScheme.secondary,
              minHeight: 1,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "What's the yearly rent? *",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 8.h,
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Type",
                  suffixText: "/year",
                  prefixText: "₦",
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Do you pay light bills?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 8.h,
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Type",
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Do you pay water bills?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 8.h,
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Type",
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Other bills?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 8.h,
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Type",
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
