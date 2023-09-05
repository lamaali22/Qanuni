import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'شاشة تسجيل الدخول',
        style: TextStyle(color: Colors.black, fontSize: 18),
      )),
    );
  }
}
