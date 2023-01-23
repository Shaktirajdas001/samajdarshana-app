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
          Duration(seconds: 2),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Register())),
        ));
  }

  Future getValidationData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: RadialGradient(
        //     center: Alignment.center,
        //     colors: [Color.fromARGB(255, 221, 220, 220), Colors.blue],
        //     stops: [0.9, 0.9],
        //   ),
        // ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 242, 154, 103),
              Color.fromARGB(255, 129, 204, 204)
            ],
          ),
        ),

        alignment: Alignment.center,
        // color: Color(0xFF86198f),
        // ignore: prefer_const_constructors
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // Text(
            //   "",
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 32,
            //       fontWeight: FontWeight.bold),
            // ),

            Image(
              image: AssetImage("assets/images/samaj.png"),
              height: 100,
            ),
            //Image.asset('assets/images/samaj.png', fit: BoxFit.cover),

            Text(
              "WELCOME TO SAMAJ DARPAN",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              "Yuba Rahual Agrawal",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  width: 125,
                  height: 125,
                  child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(
                          "assets/images/yuvaadmin.png",
                        ),
                        backgroundColor: Colors.white,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("युवा राहुल अग्रवाल अध्यक्ष (2021-23) "),
                    Text("मारवाड़ी युवा मंच, मोतिहारी"),
                    Text("7277756056"),
                    // Text(
                    //   Provider.of<UserProfileProvider>(context,
                    //           listen: true)
                    //       .userName,
                    //   style: const TextStyle(
                    //       fontSize: sub_title,
                    //       color: Color(subtitle_grey),
                    //       fontWeight: FontWeight.w500),
                    // )
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
