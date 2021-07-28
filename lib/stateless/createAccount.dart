import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateful/checkBox.dart';
import 'package:magdsoft_project/stateful/countryPicker.dart';
import 'package:magdsoft_project/stateful/dropdownButton.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import '../color.dart';
import 'components/customAppBar.dart';
import 'components/customLogo.dart';
import 'components/customTextFormField.dart';

class CreateAccount extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "إنشاء حساب",
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
              padding: EdgeInsets.fromLTRB(26, 0, 25, 0),
              child: TextFormFieldWidget(text: "الاسم"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: Container(
                height: 53,
                child: TextFormFieldWidget(
                  text: "رقم الهاتف",
                  countryPicker: CountryPickerWidget(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
              child: TextFormFieldWidget(text: "البريد الالكترونى"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: DropdownWidget(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
              child: TextFormFieldWidget(text: "كلمة المرور"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: TextFormFieldWidget(text: "تأكيد كلمة المرور"),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(79, 36.65, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 15,
                          fontFamily: 'font',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 36.65, 79, 0),
                  child: Text(
                    " ..لدى حساب بالفعل ",
                    style: TextStyle(
                        color: AppColors.black2,
                        fontSize: 15,
                        fontFamily: 'font',
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(190, 28, 0, 0),
                  child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(1)),
                      child: CheckboxWidget()),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 28, 25, 0),
                    child: Text(
                      "أوافق على الشروط",
                      style: TextStyle(
                        color: AppColors.black2,
                        fontSize: 15,
                        fontFamily: 'font',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(56, 29.35, 56, 50),
              child: ButtonWidget(text: "استمرار"),
            ),
          ],
        ),
      ),
    );
  }
}
