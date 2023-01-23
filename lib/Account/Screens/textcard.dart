// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';
import 'package:samaj_darpana/Account/Screens/sidebar.dart';

class TextCard extends StatefulWidget {
  const TextCard({Key? key}) : super(key: key);

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: 300,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(50),
        //   ),
        //   color: Colors.yellow,
        // ),
        child: Stack(
          children: [
            Positioned(
              top: 35,
              child: Material(
                  child: Container(
                height: 180.0,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(0.0),
                  // new BoxShadow(
                  //   color:Colors.green
                  // )
                ),
              )),
            ),
            Positioned(
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
