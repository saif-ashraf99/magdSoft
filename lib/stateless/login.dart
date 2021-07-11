import 'package:flutter/material.dart';
import 'package:magdsoft_project/color.dart';
import 'package:magdsoft_project/stateful/checkBox.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.white,
          title: Text(
            "تسجيل الدخول",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontFamily: 'font2', fontSize: 22, color: AppColors.black),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              CustomLogo(),
              Container(
                // height: 324,
                width: 53,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(26, 0, 25, 0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                              color: AppColors.yellow.withOpacity(.026)),
                        ),
                        filled: true,
                        fillColor: AppColors.yellow.withOpacity(.26),
                        hintStyle: TextStyle(
                            backgroundColor: AppColors.yellow.withOpacity(.026),
                            fontSize: 20,
                            fontFamily: 'font'),
                        hintText: "الاسم"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 27, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: AppColors.yellow.withOpacity(.026)),
                      ),
                      filled: true,
                      fillColor: AppColors.yellow.withOpacity(.26),
                      hintStyle: TextStyle(
                          backgroundColor: AppColors.yellow.withOpacity(.026),
                          fontSize: 20,
                          fontFamily: 'font'),
                      hintText: "كلمة المرور"),
                  //style: TextStyle(color: ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(26, 37, 0, 0),
                    child: Text("تذكرنى",
                        style: TextStyle(
                            color: AppColors.black2,
                            fontFamily: 'font',
                            fontSize: 15)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(6, 40, 0, 0),
                      child: CheckboxWidget(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(138, 37, 36, 0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "نسيت كلمة المرور",
                          style: TextStyle(
                              color: AppColors.black2,
                              fontSize: 15,
                              fontFamily: 'font',
                              decoration: TextDecoration.underline),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(93, 76, 93, 0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "ليس لديك حساب ؟ إنشاء حساب",
                      style: TextStyle(
                          color: AppColors.black2,
                          fontSize: 15,
                          fontFamily: 'font',
                          decoration: TextDecoration.underline),
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(56, 78, 56, 111),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.yellow,
                      padding: EdgeInsets.fromLTRB(111, 14, 111, 15),
                      textStyle: TextStyle(fontSize: 18, fontFamily: 'font')),
                  onPressed: () {},
                  child: Text("دخول"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(92, 14, 91, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 192 / 812,
        width: MediaQuery.of(context).size.width * 192 / 375,
        child: Image(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
