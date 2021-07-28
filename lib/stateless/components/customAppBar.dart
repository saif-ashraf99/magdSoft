import 'package:flutter/material.dart';
import 'package:magdsoft_project/constants.dart';

import '../../color.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  String text;
  Widget? icon;

  AppBarWidget({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: icon,
      centerTitle: true,
      backgroundColor: AppColors.white,
      title: Text(text, style: Styles.appbarTextStyle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
