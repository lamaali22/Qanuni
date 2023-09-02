import 'dart:ffi';

import 'package:flutter/material.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إعادة ضبط كلمة المرور'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              ' ادخل بريدك الالكتروني لارسال رابط تغيير كلمة المرور',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 15, fontFamily: 'poppins'),
            ),
          ),

          SizedBox(height: 15),
          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), //
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                labelText: 'البريد الالكتروني',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(12),
                ),
                //hintText: 'البريد الالكتروني',
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),

          SizedBox(height: 20),

          MaterialButton(
            onPressed: () {},
            child: Text(
              'اعادة ضبط كلمة المرور',
              style: TextStyle(
                  fontSize: 18, fontFamily: 'poppins', color: Colors.white),
            ),
            color: Colors.teal,
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(12)),
            height: 50,
            minWidth: 325,
          ),
        ],
      ),
    );
  }
}
