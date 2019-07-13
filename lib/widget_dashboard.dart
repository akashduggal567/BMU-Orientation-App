import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/parent_schedule.dart';
import 'package:flutter_app_orientation/schedule.dart';
import 'package:flutter_app_orientation/student_clubs.dart';
import 'package:url_launcher/url_launcher.dart';

import 'detailed_info.dart';
import 'lms_webview.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Container(
//      height: screen_height * 0.4,
        width: screen_width,
//        color: Colors.white,
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: new Container(
            child: Column(
              children: <Widget>[
//                Row(
//                  children: <Widget>[
//                    Text("Dashboard"),
//                  ],
//                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("tapped");
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Schedule();
                        }));},

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                    width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.calendar_today,color: Colors.white,size: 30.0,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("Student\nOrientation",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("tapped");
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Parent_Schedule();
                          }));},

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.calendar_today,color: Colors.white,size: 30.0,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("Parent \nOrientation",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("Url launching");
                          _launchURL() async {
                                const url = 'http://lms.bmu.edu.in/';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }

                              }
                              return _launchURL();
                          },

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.book,color: Colors.white,size: 30,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("College\nLMS",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("tapped");
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return StudentClubs();
                          }));},

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.accessibility,color: Colors.white,size: 30,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("Student Club\nand Activities",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("tapped");
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Schedule();
                          }));},

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.library_books,color: Colors.white,size: 30.0,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("Student\nResources",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){
                          print("tapped");
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Schedule();
                          }));},

                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      width: screen_width,
//                                      color: Colors.grey[800],
                                      child: Container(
                                          margin: EdgeInsets.only(top: 14.0),
                                          child: Icon(Icons.info,color: Colors.white,size: 30.0,))
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 0.0),
                                      width: screen_width,
//                                      color: Colors.black,
                                      child: Text("Campus\nInformation",style: TextStyle(color: Colors.white,fontSize: 15.0),textAlign: TextAlign.center,textScaleFactor: 0.9,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), //expanded
                  ],
                ),
              ],
            ),
          ),
        )

    );
  }
}
