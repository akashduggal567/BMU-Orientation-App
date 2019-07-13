import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/bottom_ navigation_bar.dart';
import 'package:flutter_app_orientation/image_carousel.dart';
import 'package:flutter_app_orientation/profile.dart';
import 'package:flutter_app_orientation/widget_dashboard.dart';
import 'package:flutter_app_orientation/home_page.dart';

import 'home.dart';
import 'lms_webview.dart';
import 'map.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
//  @override
////  State<StatefulWidget> createState(){
////      return _MyHomePageState();
////  }
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedpage = 0;
  final _pageOptions = [home(),home(),Campus_map(),Campus_map(),Profile()];


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
//      appBar: AppBar(
//        elevation: 1,
//        backgroundColor: Colors.blue,
//        title: Text(widget.title,),  //style --> change text font or size
////        leading: new IconButton(
////            icon: new Icon(Icons.menu),
////            onPressed: null),
//
//      ),

        backgroundColor: Colors.blue[100],
        body: _pageOptions[_selectedpage],
        bottomNavigationBar: BottomNavigationBar(elevation: 8.0,
          unselectedItemColor: Colors.white,
          selectedItemColor:  Colors.black,
          backgroundColor: Colors.blue,


          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedpage,
          onTap: (int index){
            setState(() {
              _selectedpage = index;
            });
          },
          items:[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home")
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Search")),

            BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text("Map")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                title: Text("person")),


            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text("Profile")
            ),


          ],
        )

      ),
    );
  }
}
