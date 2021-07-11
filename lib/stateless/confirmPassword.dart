import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';
import 'package:magdsoft_project/stateless/login.dart';

class ConfirmPassword extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.yellow,
            onPressed: () {},
          ),
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Text(
            "نسيت كلمة المرور",
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'font2',
              color: AppColors.black,
            ),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: ListView(
            children: [
              CustomLogo(),
              Padding(
                padding: EdgeInsets.fromLTRB(34, 10, 17, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "كلمة المرور",
                    hintStyle: TextStyle(
                        fontFamily: 'font',
                        fontSize: 20,
                        color: AppColors.grey),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(34, 18, 17, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "تأكيد كلمة المرور",
                    hintStyle: TextStyle(
                        color: AppColors.grey,
                        fontSize: 20,
                        fontFamily: 'font'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(55, 314, 57, 53),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(103, 14, 101, 15),
                    primary: AppColors.yellow,
                  ),
                  onPressed: () {},
                  child: Text(
                    "استمرار",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'font2',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
