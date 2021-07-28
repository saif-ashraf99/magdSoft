import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'الجنس';

  @override
  Widget build(BuildContext context) {
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
            items: <String>['أنثى', 'ذكر', 'الجنس']
                .map<DropdownMenuItem<String>>((String value) {
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
