import 'package:flutter/material.dart';

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
