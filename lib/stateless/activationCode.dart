import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../color.dart';
import 'components/customLogo.dart';
import 'login.dart';

class ActivationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "كود التفعيل",
        icon: BackButton(
          color: AppColors.yellow,
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          CustomLogo(),
          Padding(
            padding: EdgeInsets.fromLTRB(109, 28, 108, 0),
            child: Text(
              "إدخل كود التفعيل",
              style: TextStyle(
                  fontSize: 22, fontFamily: 'font', color: AppColors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 35, 45, 0),
            child: PinCodeTextField(
              pinBoxWidth: 50,
              pinBoxHeight: 50,
              maxLength: 5,
              hasUnderline: true,
              defaultBorderColor: AppColors.white,
              autofocus: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(216, 26, 53, 0),
            child: TextButton(
              child: Text(
                "إعادة إرسال الكود",
                style: TextStyle(
                    fontFamily: 'font',
                    fontSize: 15,
                    color: AppColors.black2,
                    decoration: TextDecoration.underline),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(56, 224, 56, 73),
            child: ButtonWidget(
              text: "إدخال",
            ),
          ),
        ],
      ),
    );
  }
}
