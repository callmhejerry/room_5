import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({
    Key? key,
    required this.dropDownList,
    required this.inputType,
    this.hintText,
  }) : super(key: key);

  final List<String> dropDownList;
  final String inputType;
  final String? hintText;

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputType,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: widget.hintText,
              constraints: BoxConstraints(
                maxHeight: 45.h,
                minHeight: 35.h,
              ),
            ),
            value: value,
            style: Theme.of(context).textTheme.labelMedium,
            items: widget.dropDownList
                .map<DropdownMenuItem<String>>(
                    (item) => DropdownMenuItem<String>(
                          value: item,
                          enabled: true,
                          child: Text(item),
                        ))
                .toList(),
            onChanged: (String? val) {
              setState(() {
                value = val;
              });
            },
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
