
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class image_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen_height =  MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;

    return Container(
      height: screen_height*0.3,
      width: screen_width,
//      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/1_poster.jpeg'),
          AssetImage('assets/images/2_poster.jpg'),
          AssetImage('assets/images/3_poster.jpg'),
          AssetImage('assets/images/sanyal.png')
        ],
        autoplay: false,
        autoplayDuration: const Duration(seconds: 5),
        borderRadius: true,
        showIndicator: true,
        dotSize: 6.0,
        dotSpacing: 20.0,
        noRadiusForIndicator: false,
        indicatorBgPadding: 4.0,
//        overlayShadow: true,
//        overlayShadowSize: 0.2,
//        overlayShadowColors: Colors.black,
        animationCurve: Curves.ease,

      ),
    );
  }
}
