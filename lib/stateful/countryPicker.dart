import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerWidget extends StatefulWidget {
  @override
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      enabled: true,
      onChanged: (c) => c.name,
      initialSelection: 'SA',
      showCountryOnly: true,
      showOnlyCountryWhenClosed: true,
    );
  }
}
