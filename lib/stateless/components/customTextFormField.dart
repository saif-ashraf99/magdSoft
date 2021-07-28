import 'package:flutter/material.dart';
import 'package:magdsoft_project/constants.dart';

import '../../color.dart';

class TextFormFieldWidget extends StatelessWidget {
  String text;
  Widget? countryPicker;
  TextFormFieldWidget({required this.text, this.countryPicker});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColors.yellow.withOpacity(.026)),
        ),
        filled: true,
        fillColor: AppColors.yellow.withOpacity(.26),
        hintText: text,
        hintStyle: Styles.hintTextStyle,
        prefixIcon: countryPicker,
      ),
    );
  }
}
