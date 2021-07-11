import 'package:flutter/material.dart';
import '../color.dart';
import 'login.dart';

class ForgetPassword extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {},
            color: AppColors.yellow,
          ),
          elevation: 0,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: Text(
            "نسيت كلمة المرور",
            style: TextStyle(
              color: AppColors.black,
              fontFamily: 'font2',
              fontSize: 22,
            ),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: ListView(
            children: [
              CustomLogo(),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 46, 16, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.yellow.withOpacity(.026)),
                        borderRadius: BorderRadius.circular(5)),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "إدخل رقم الجوال",
                    hintStyle: TextStyle(
                      backgroundColor: AppColors.yellow.withOpacity(.026),
                      fontSize: 20,
                      fontFamily: 'font',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(56, 349, 56, 53),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.yellow,
                    padding: EdgeInsets.fromLTRB(103, 14, 101, 15),
                  ),
                  child: Text(
                    "استمرار",
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'font2',
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
