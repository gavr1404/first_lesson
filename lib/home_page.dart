// ignore_for_file: prefer_const_constructors

import 'package:first_lesson/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Вітаю!!!! \nВи отримали необхідні данні."),
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
