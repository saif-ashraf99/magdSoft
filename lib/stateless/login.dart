import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';
import 'package:magdsoft_project/stateful/checkBox.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import 'package:magdsoft_project/stateless/components/customTextFormField.dart';

import 'components/customLogo.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: AppLocalizations.of(context)!.login,
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            CustomLogo(),
            Container(
              // height: 324,
              width: 53,
              child: Padding(
                padding: EdgeInsets.fromLTRB(26, 0, 25, 0),
                child: TextFormFieldWidget(
                  text: "الاسم",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 27, 25, 0),
              child: TextFormFieldWidget(
                text: "كلمة المرور",
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(26, 37, 0, 0),
                  child: Text("تذكرنى",
                      style: TextStyle(
                          color: AppColors.black2,
                          fontFamily: 'font',
                          fontSize: 15)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(6, 40, 0, 0),
                    child: CheckboxWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(138, 37, 36, 0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "نسيت كلمة المرور",
                        style: TextStyle(
                            color: AppColors.black2,
                            fontSize: 15,
                            fontFamily: 'font',
                            decoration: TextDecoration.underline),
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(93, 76, 93, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "ليس لديك حساب ؟ إنشاء حساب",
                    style: TextStyle(
                        color: AppColors.black2,
                        fontSize: 15,
                        fontFamily: 'font',
                        decoration: TextDecoration.underline),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(56, 78, 56, 111),
              child: ButtonWidget(
                text: "دخول",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
