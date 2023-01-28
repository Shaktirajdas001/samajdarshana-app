// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';
import 'package:samaj_darpana/Account/Screens/sidebar.dart';
import 'package:samaj_darpana/Account/Screens/textcard.dart';

import 'blogs.dart';
import 'home_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   drawer: const SidebarScreen(),
    //   appBar: AppBar(
    //     backgroundColor: Colors.yellow,
    //     bottom: PreferredSize(
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //           child: Row(
    //             children: [
    //               Container(
    //                 width: 55,
    //                 height: 55,
    //                 // ignore: prefer_const_constructors
    //                 // child: Align(
    //                 //     alignment: Alignment.topRight,
    //                 //     child: const SidebarScreen()),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(10.0),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Container(
    //                       width: 55,
    //                       height: 55,
    //                       child: Align(
    //                           alignment: Alignment.topRight,
    //                           child: CircleAvatar(
    //                             radius: 30.0,
    //                             backgroundImage: AssetImage(
    //                               "assets/images/sahitya.png",
    //                             ),
    //                             backgroundColor: Colors.white,
    //                           )),
    //                     ),
    //                     // Container(
    //                     //   child: Text(
    //                     //     "Paula K",
    //                     //     style: TextStyle(
    //                     //         color: Colors.black,
    //                     //         fontSize: 18,
    //                     //         fontWeight: FontWeight.w900),
    //                     //   ),
    //                     // ),
    //                   ],
    //                 ),
    //               ),
    //               // Container(
    //               //   decoration: BoxDecoration(
    //               //     borderRadius: BorderRadius.circular(50),
    //               //     color: Colors.grey,
    //               //   ),
    //               //   alignment: Alignment.center,
    //               //   height: 43,
    //               //   width: 43,
    //               //   margin: EdgeInsets.only(top: 8, left: 100),
    //               //   child: Stack(
    //               //     // ignore: prefer_const_literals_to_create_immutables
    //               //     children: [
    //               //       GestureDetector(
    //               //         onTap: () {
    //               //           // Navigator.push(
    //               //           //   context,
    //               //           //   MaterialPageRoute(
    //               //           //       builder: (context) => NotificationSceen()),
    //               //           // );
    //               //         },
    //               //         child: HeroIcon(
    //               //           HeroIcons.bell,
    //               //           // color: Color(primary_color),
    //               //           size: 22,
    //               //         ),
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //             ],
    //           ),
    //         ),
    //         preferredSize: Size.fromHeight(50.0)),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.only(left: 15, right: 15),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         // ignore: prefer_const_literals_to_create_immutables
    //         children: [
    //           SizedBox(
    //             height: 5,
    //           ),
    //           TextCard(),
    //           SizedBox(
    //             height: 6,
    //           ),
    //           SliderCarousel(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
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
    return Scaffold(
      // drawer: const SidebarScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.18),
              spreadRadius: 10,
              blurRadius: 3,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
        ),
        height: 70,
        // child: const ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(20),
        //     topLeft: Radius.circular(20),
        //   ),
        //   // child: Tabs(0)
        // ),
      ),
      backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      // body: Consumer<CustomerDetailsProvider>(
      //     builder: (context, customerDetailsdata, child) {
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.yellow,
              pinned: true,
              snap: true,
              floating: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 15, left: 25),
                      child: Text(
                        "Samaj Darpan",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 16, 16, 15)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 25),
                    child: Text(
                      "समाज दर्पण",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 15, 15),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              leadingWidth: 80,

              // ignore: unnecessary_new
              leading: Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SidebarScreen()));
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/sahitya.png')
                        as ImageProvider,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              // actions: <Widget>[
              //   Padding(
              //     padding: const EdgeInsets.only(right: 20, top: 7),
              //     child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(50),
              //           color: Color(0xFFF2E3F4)),
              //       alignment: Alignment.center,
              //       height: 40,
              //       width: 50,
              //       child: Stack(
              //           // ignore: prefer_const_literals_to_create_immutables
              //           // children: [
              //           //   GestureDetector(
              //           //     onTap: () {
              //           //       Navigator.push(
              //           //         context,
              //           //         MaterialPageRoute(
              //           //             builder: (context) => NotificationSceen()),
              //           //       );
              //           //     },
              //           //     child: HeroIcon(
              //           //       HeroIcons.bell,
              //           //       solid: true,
              //           //       color: Color(primary_color),
              //           //       size: icon_size,
              //           //     ),
              //           //   ),
              //           // ],
              //           ),
              //     ),
              //   ),
              // ],
            ),
          )
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 1,
                ),
                TextCard(),
                // SizedBox(
                //   height: 1,
                // ),
                SliderCarousel(),
                SizedBox(
                  height: 1,
                ),
                Blogs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
