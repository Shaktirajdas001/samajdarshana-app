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
    return Column(children: [
      Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/sahitya.png"),
              Text("Your Title"),
              Text("This is the demo card design for blog card"),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/sahitya.png"),
              Text("Your Title"),
              Text("This is the demo card design for blog card"),
              // SizedBox(height: 1)
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/sahitya.png"),
              Text("Your Title"),
              Text("This is the demo card design for blog card"),
              // SizedBox(height: 1)
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/sahitya.png"),
              Text("Your Title"),
              Text("This is the demo card design for blog card"),
              SizedBox(height: 1)
            ],
          ),
        ),
      )
    ]);
  }
}
