import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateful/countryPicker.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import '../color.dart';
import 'components/customLogo.dart';
import 'components/customTextFormField.dart';
import 'login.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgetPassword extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: AppLocalizations.of(context)!.forgetPassword,
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
                text: AppLocalizations.of(context)!.enterMobileNumber,
                countryPicker: CountryPickerWidget(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(56, 349, 56, 53),
              child: ButtonWidget(
                text: AppLocalizations.of(context)!.con,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
