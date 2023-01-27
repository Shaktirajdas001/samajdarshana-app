import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogState();
}

class _BlogState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     image: DecorationImage(
    //       image: NetworkImage('https://example.com/image.jpg'),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Column(
    //     children: <Widget>[
    //       Padding(
    //         padding: EdgeInsets.all(8),
    //         child: Text(
    //           'Title',
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontWeight: FontWeight.bold,
    //             fontSize: 22,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Column(children: [
      Container(
        height: 200,
        width: 300,
        color: Colors.yellow,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(50),
        //   ),
        //   color: Colors.yellow,
        // ),
        child: Row(
          children: [
            // Positioned(
            //   top: 35,
            //   child: Material(
            //       child: Container(
            //     height: 180.0,
            //     width: 300,
            //     decoration: BoxDecoration(
            //       color: Colors.yellow,
            //       borderRadius: BorderRadius.circular(0.0),
            //       // new BoxShadow(
            //       //   color:Colors.green
            //       // )
            //     ),
            //   )),
            // ),
            // Positioned(
            //   child: Card(
            //     elevation: 10.0,
            //     shadowColor: Colors.grey,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //   ),
            // ),

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
                    // backgroundColor: Colors.yellow,
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
            ),
          ],
        ),
        //  Row(
        //         children: [
        //           Container(
        //             width: 125,
        //             height: 125,
        //             child: Align(
        //                 alignment: Alignment.topRight,
        //                 child: CircleAvatar(
        //                   radius: 60.0,
        //                   backgroundImage: AssetImage(
        //                     "assets/images/yuvaadmin.png",
        //                   ),
        //                   backgroundColor: Colors.yellow,
        //                 )),
        //           ),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text("युवा राहुल अग्रवाल अध्यक्ष (2021-23) "),
        //               Text("मारवाड़ी युवा मंच, मोतिहारी"),
        //               Text("7277756056"),
        //               // Text(
        //               //   Provider.of<UserProfileProvider>(context,
        //               //           listen: true)
        //               //       .userName,
        //               //   style: const TextStyle(
        //               //       fontSize: sub_title,
        //               //       color: Color(subtitle_grey),
        //               //       fontWeight: FontWeight.w500),
        //               // )
        //             ],
        //           ),
        //         ],
        //       ),
      )
    ]);
  }
}
