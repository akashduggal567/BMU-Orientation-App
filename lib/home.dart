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
//     color: Colors.black,
      margin: EdgeInsets.only(bottom: 40.0),
      child: Column(
//        scrollDirection: null,
        children: <Widget>[
          Container(
//                color: Colors.grey,
              child: image_carousel()),
          new Padding(
            padding: EdgeInsets.all (MediaQuery.of(context).size.height*0.03),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 50,
//                color: Colors.yellow,
                child: dashboard()),
          ),
        ],
      ),
    );
  }
}
