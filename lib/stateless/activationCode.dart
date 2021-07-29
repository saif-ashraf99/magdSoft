import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateless/components/customAppBar.dart';
import 'package:magdsoft_project/stateless/components/customButtonWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../color.dart';
import '../constants.dart';
import 'components/customLogo.dart';
import 'login.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ActivationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: AppLocalizations.of(context)!.activationCode,
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
              AppLocalizations.of(context)!.enterActivationCode,
              style: Styles.textStyle,
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
                AppLocalizations.of(context)!.resendActivationCode,
                style: Styles.textStyle2,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(56, 224, 56, 73),
            child: ButtonWidget(
              text: AppLocalizations.of(context)!.enter,
            ),
          ),
        ],
      ),
    );
  }
}
