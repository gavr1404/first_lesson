import 'dart:async';
import 'package:first_lesson/home_page.dart';
import 'package:first_lesson/login_page.dart';
import 'package:flutter/material.dart';

bool TrueLogin = false;

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 3), () {
      if (TrueLogin) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset(
            "assets/logo.png",
            height: 180,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 92, 194, 82),
      ),
    );
  }
}
