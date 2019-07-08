import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/schedule.dart';

import 'lms_webview.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Dashbord"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");
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
                                Icon(Icons.calendar_today,color: Colors.white),
                                Text("Student      Orientation",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,textScaleFactor: 0.9,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");},
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
                                Icon(Icons.calendar_today,color: Colors.white),
                                Text("Parent      Orientation",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");
//                        Navigator.push(context, MaterialPageRoute(builder: (context){
//                          return lms();
//                        }));
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
                                Icon(Icons.book,color: Colors.white,),
                                Text("College LMS",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), //expanded
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0,bottom: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.accessibility,color: Colors.white),
                                Text("Student Clubs and Activities",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0,bottom: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.library_books,color: Colors.white),
                                Text("Student    Resources",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: InkWell(
                        onTap: (){print("tapped");},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0,top: 5.0,bottom: 5.0),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384),
                            ),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.info_outline,color: Colors.white),
                                Text("Campus Information",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
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
