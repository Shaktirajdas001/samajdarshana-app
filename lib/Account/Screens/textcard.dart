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
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 200,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.yellow,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/yuvaadmin.png"),
                            height: 150,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text("युवा राहुल अग्रवाल",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text(" अध्यक्ष",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text("मारवाड़ी युवा मंच",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          Text("7277756056",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
