// ignore_for_file: prefer_const_constructors

import 'package:first_lesson/forgot_page.dart';
import 'package:first_lesson/home_page.dart';
import 'package:first_lesson/register_now.dart';
import 'package:flutter/material.dart';
// import 'dart:async';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 194, 82),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone_android,
              color: Colors.white,
              size: 70,
            ),
            SizedBox(height: 40),

            // hello
            Text("Hello and start...",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                )),

            SizedBox(height: 5),

            // next hello
            Text(
              "log in please",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            SizedBox(height: 60),

            // login
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'login',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // remember my
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Row(children: [
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: Checkbox(
                      value: isRememberMe,
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          isRememberMe = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 50)),
                backgroundColor: MaterialStatePropertyAll(Colors.green[800]),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text('Sing in'),
            ),

            // button sign in
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 30),
            //   child: ElevatedButton(
            //     style: ButtonStyle(
            //         const EdgeInsets.symmetric(horizontal: 30)
            //         backgroundColor:
            //             MaterialStatePropertyAll(Colors.green[800]),
            //             ),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const HomePage()));
            //     },
            //     child: Text('Sing in'),
            //   ),
            // ),

            SizedBox(height: 20),

            //register new member
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: Text("Register now"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                    },
                    child: Text("Forgot password?"),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // bool isRememberMe = false;

}
