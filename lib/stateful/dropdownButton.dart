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
    return Container(
      height: 53,
      color: AppColors.yellow,
      child: DropdownButton<String>(
        // hint: Center(child: Text("الجنس",style: TextStyle(),)),
        borderRadius: BorderRadius.circular(5),
        isExpanded: true,
        iconEnabledColor: AppColors.black,
        dropdownColor: AppColors.white,
        focusColor: AppColors.yellow,
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 25,
        style:
            TextStyle(color: AppColors.black, fontFamily: 'font', fontSize: 20),
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
    );
  }
}
