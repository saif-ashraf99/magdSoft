import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = AppLocalizations.of(context)!.sex;
    return Center(
      child: Container(
        width: 200,
        height: 53,
        color: AppColors.yellow,
        child: Center(
          child: DropdownButton<String>(
            //borderRadius: BorderRadius.circular(5),
            isExpanded: false,
            iconEnabledColor: AppColors.black,
            dropdownColor: AppColors.white,
            focusColor: AppColors.yellow,
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 25,
            style: TextStyle(
                color: AppColors.black, fontFamily: 'Regular', fontSize: 20),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              AppLocalizations.of(context)!.sex,
              AppLocalizations.of(context)!.female,
              AppLocalizations.of(context)!.male
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
