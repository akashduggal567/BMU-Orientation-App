import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orientation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent
      ),
      home: MyHomePage(title: 'Student Orientation 2019'),

    );
  }
}


