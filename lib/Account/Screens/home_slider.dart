import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({Key? key}) : super(key: key);

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

final List<String> images = [
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
];

class _SliderCarouselState extends State<SliderCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index, realIdx) {
        String slides = "${images[index]}";
        return Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            margin: EdgeInsets.all(5),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(25),
            //   // child: Image.network(images[index],
            //   //     fit: BoxFit.cover, width: 1000)),
            //   child: FadeInImage.assetNetwork(
            //       height: 6,
            //       placeholder: "assets/images/slider-loader.gif",
            //       image: slides,
            //       fit: BoxFit.cover,
            //       width: 30),
            // ),
            child: Container(
              height: 80,
              width: 80,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 241, 148, 42),
                radius: 250,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: NetworkImage(
                    images[index],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
