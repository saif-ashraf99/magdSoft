import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../color.dart';
import 'login.dart';

class ActivationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: AppColors.yellow,
            onPressed: () {},
          ),
          title: Text(
            "كود التفعيل",
            style: TextStyle(
                fontFamily: 'font2', fontSize: 22, color: AppColors.black),
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.yellow,
                  padding: EdgeInsets.fromLTRB(111, 14, 111, 15),
                ),
                onPressed: () {},
                child: Text(
                  "إدخال",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'font2',
                      color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
