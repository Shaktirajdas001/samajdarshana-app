// ignore_for_file: prefer_const_constructors

import 'Account/Screens/register.dart';

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

late String finalStatus = "null";

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getValidationData().whenComplete(() async => Timer(
          Duration(seconds: 4),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Register())),
        ));
  }

  Future getValidationData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [
              Color.fromARGB(255, 242, 154, 103),
              Color.fromARGB(255, 129, 204, 204)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Column(
                children: const [
                  Image(
                    image: AssetImage("assets/images/samaj.png"),
                    height: 450,
                    width: 300,
                    alignment: Alignment.center,
                  ),
                  Text(
                    "WELCOME TO SAMAJ DARPAN",
                    style: TextStyle(
                      fontSize: 20.0,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0, -5))
                      ],
                      color: Colors.transparent,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationThickness: 4,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/yuvaadmin.png"),
                  height: 200,
                  width: 200,
                  alignment: Alignment.bottomLeft,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("युवा राहुल अग्रवाल",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        )),
                    Text("अध्यक्ष (2021-23)",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("मारवाड़ी युवा मंच, मोतिहारी",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                        )),
                    Text("7277756056",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
