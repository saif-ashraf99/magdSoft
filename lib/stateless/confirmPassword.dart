import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import 'package:magdsoft_project/stateless/login.dart';

import 'components/customLogo.dart';
import 'components/customTextFormField.dart';

class ConfirmPassword extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "نسيت كلمة المرور",
        icon: BackButton(
          color: AppColors.yellow,
          onPressed: () {},
        ),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            CustomLogo(),
            Padding(
              padding: EdgeInsets.fromLTRB(34, 10, 17, 0),
              child: TextFormFieldWidget(
                text: 'كلمة المرور',
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(34, 18, 17, 0),
              child: TextFormFieldWidget(
                text: 'تأكيد كلمة المرور',
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(55, 314, 57, 53),
              child: ButtonWidget(
                text: "استمرار",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
