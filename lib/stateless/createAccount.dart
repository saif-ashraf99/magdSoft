import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateful/checkBox.dart';
import 'package:magdsoft_project/stateful/countryPicker.dart';
import 'package:magdsoft_project/stateful/dropdownButton.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import '../color.dart';
import '../constants.dart';
import 'components/customAppBar.dart';
import 'components/customLogo.dart';
import 'components/customTextFormField.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateAccount extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: AppLocalizations.of(context)!.createAcc,
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
              child:
                  TextFormFieldWidget(text: AppLocalizations.of(context)!.name),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: Container(
                height: 53,
                child: TextFormFieldWidget(
                  text: AppLocalizations.of(context)!.phoneNumber,
                  countryPicker: CountryPickerWidget(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
              child: TextFormFieldWidget(
                  text: AppLocalizations.of(context)!.email),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: DropdownWidget(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
              child: TextFormFieldWidget(
                  text: AppLocalizations.of(context)!.password),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
              child: TextFormFieldWidget(
                  text: AppLocalizations.of(context)!.confirmPassword),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(79, 36.65, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!.login,
                      style: Styles.labelText2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 36.65, 79, 0),
                  child: Text(
                    AppLocalizations.of(context)!.alreadyHaveAcc,
                    style: Styles.labelText,
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
                      AppLocalizations.of(context)!.agree,
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
              child: ButtonWidget(text: AppLocalizations.of(context)!.con),
            ),
          ],
        ),
      ),
    );
  }
}
