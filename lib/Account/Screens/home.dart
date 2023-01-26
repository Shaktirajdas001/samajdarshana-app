// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';
import 'package:samaj_darpana/Account/Screens/sidebar.dart';
import 'package:samaj_darpana/Account/Screens/textcard.dart';

import 'home_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    // ignore: prefer_const_constructors
                    child: Align(
                        alignment: Alignment.topRight,
                        child: const SidebarScreen()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: AssetImage(
                                  "assets/images/sahitya.png",
                                ),
                                backgroundColor: Colors.white,
                              )),
                        ),
                        // Container(
                        //   child: Text(
                        //     "Paula K",
                        //     style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 18,
                        //         fontWeight: FontWeight.w900),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //     color: Colors.grey,
                  //   ),
                  //   alignment: Alignment.center,
                  //   height: 43,
                  //   width: 43,
                  //   margin: EdgeInsets.only(top: 8, left: 100),
                  //   child: Stack(
                  //     // ignore: prefer_const_literals_to_create_immutables
                  //     children: [
                  //       GestureDetector(
                  //         onTap: () {
                  //           // Navigator.push(
                  //           //   context,
                  //           //   MaterialPageRoute(
                  //           //       builder: (context) => NotificationSceen()),
                  //           // );
                  //         },
                  //         child: HeroIcon(
                  //           HeroIcons.bell,
                  //           // color: Color(primary_color),
                  //           size: 22,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50.0)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 5,
              ),
              TextCard(),
              SizedBox(
                height: 6,
              ),
              SliderCarousel(),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   drawer: const SidebarScreen(),
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: const Text("Home Screen"),
    //   ),
    //   body: const Center(
    //     child: Text('HOME SCREEN'),
    //   ),
    // );
  }
}
