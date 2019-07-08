import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/widget_dashboard.dart';

import 'image_carousel.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
//        scrollDirection: null,
        children: <Widget>[
          image_carousel(),
          new Padding(
            padding: EdgeInsets.all (25.0),
          ),
          dashboard(),
          dashboard(),
          Divider(height: 16.0, indent: 0.0,color: Colors.black,),
          new Padding(
            padding: EdgeInsets.all (25.0),
          ),


        ],
      ),
    );
  }
}
