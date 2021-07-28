import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  State<CheckboxWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: CircleBorder(),
      value: isChecked,
      checkColor: AppColors.grey,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
