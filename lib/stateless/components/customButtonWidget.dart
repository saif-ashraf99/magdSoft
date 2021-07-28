import 'package:flutter/material.dart';
import 'package:magdsoft_project/constants.dart';

import '../../color.dart';

class ButtonWidget extends StatelessWidget {
  String text;

  ButtonWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(15),
        primary: AppColors.yellow,
      ),
      onPressed: () {},
      child: Text(text, style: Styles.buttonTextStyle),
    );
  }
}
