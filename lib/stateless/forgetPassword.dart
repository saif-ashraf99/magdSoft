import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateful/countryPicker.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import '../color.dart';
import 'components/customLogo.dart';
import 'components/customTextFormField.dart';
import 'login.dart';

class ForgetPassword extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "نسيت كلمة المرور",
        icon: BackButton(
          onPressed: () {},
          color: AppColors.yellow,
        ),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            CustomLogo(),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 46, 16, 0),
              child: TextFormFieldWidget(
                text: 'إدخل رقم الجوال',
                countryPicker: CountryPickerWidget(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(56, 349, 56, 53),
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
