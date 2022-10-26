// ignore_for_file: prefer_const_constructors

import 'package:first_lesson/login_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<StatefulWidget> createState() => ForgotState();
}

class ForgotState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Відновлення пароля \n...на стадії розрабки ..."),
        ),
        body: Center(
            child: IconButton(
          icon: Icon(Icons.undo),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
        )),
      ),
    );
  }
}
