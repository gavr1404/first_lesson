import 'dart:async';
import 'package:first_lesson/home_page.dart';
import 'package:first_lesson/login_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 3), () {
      if (TrueLogin == false) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
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
