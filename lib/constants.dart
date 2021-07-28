import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';

class Styles {
  static TextStyle appbarTextStyle =
      TextStyle(fontFamily: 'Bold', fontSize: 22, color: AppColors.black);
  static TextStyle hintTextStyle = TextStyle(
    fontFamily: 'Regular',
    fontSize: 20,
    color: AppColors.grey,
    backgroundColor: AppColors.yellow.withOpacity(.026),
  );
  static TextStyle buttonTextStyle = TextStyle(
    color: AppColors.white,
    fontFamily: 'Bold',
    fontSize: 18,
  );
  static TextStyle labelText =
      TextStyle(color: AppColors.black2, fontFamily: 'Regular', fontSize: 15);
}
