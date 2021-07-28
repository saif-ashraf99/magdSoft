import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateless/confirmPassword.dart';
import 'package:magdsoft_project/stateless/createAccount.dart';
import 'stateless/activationCode.dart';
import 'stateless/forgetPassword.dart';
import 'stateless/login.dart';

// #docregion LocalizationDelegatesImport
import 'package:flutter_localizations/flutter_localizations.dart';

// #enddocregion LocalizationDelegatesImport
// #docregion AppLocalizationsImport
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// #enddocregion AppLocalizationsImport

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
