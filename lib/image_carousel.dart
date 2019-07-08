
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class image_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      padding: EdgeInsets.all(2.0),
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/1.png'),
          AssetImage('assets/images/2.png'),
          AssetImage('assets/images/3.png'),
          AssetImage('assets/images/4.png'),
          AssetImage('assets/images/5.png'),
        ],
        autoplay: false,
        autoplayDuration: const Duration(seconds: 5),
        animationCurve: Curves.fastOutSlowIn,

      ),
    );
  }
}
