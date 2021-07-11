import 'package:flutter/material.dart';
import 'package:magdsoft_project/stateful/checkBox.dart';
import 'package:magdsoft_project/stateful/dropdownButton.dart';
import 'package:magdsoft_project/stateless/login.dart';
import '../color.dart';

class CreateAccount extends StatelessWidget {
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
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Text(
            "إنشاء حساب",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 22,
              fontFamily: 'font2',
            ),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: ListView(
            children: [
              CustomLogo(),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 0, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "الاسم",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontFamily: 'font',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "رقم الهاتف",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontFamily: 'font',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "البريد الالكترونى",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontFamily: 'font',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
                child: DropdownWidget(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 32, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "كلمة المرور",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontFamily: 'font',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(26, 31, 25, 0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: AppColors.yellow.withOpacity(.026)),
                    ),
                    filled: true,
                    fillColor: AppColors.yellow.withOpacity(.26),
                    hintText: "تأكيد كلمة المرور",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontFamily: 'font',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(79, 36.65, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 15,
                            fontFamily: 'font',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 36.65, 79, 0),
                    child: Text(
                      " ..لدى حساب بالفعل ",
                      style: TextStyle(
                          color: AppColors.black2,
                          fontSize: 15,
                          fontFamily: 'font',
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(190, 28, 0, 0),
                    child: CheckboxWidget(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 28, 25, 0),
                      child: Text(
                        "أوافق على الشروط",
                        style: TextStyle(
                          color: AppColors.black2,
                          fontSize: 15,
                          fontFamily: 'font',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(56, 29.35, 56, 50),
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
