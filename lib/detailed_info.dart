import 'package:flutter/material.dart';


class Detailed_info extends StatefulWidget {
  @override
  _Detailed_infoState createState() => _Detailed_infoState();
}

class _Detailed_infoState extends State<Detailed_info> {
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Akash"),
      ),
      body: Container(
        width: screen_width,
        color: Colors.pink[100],
        child: Column(
          children: <Widget>[
            //first image container
            Container(
              margin: EdgeInsets.all(4.0),
              width: screen_width,
              height: 180.0,
              color: Colors.grey,
              child: Container(
                child: Image.asset('assets/images/2.png',fit: BoxFit.cover),
              ),
            ),
            //starting of second main container which consists of description and cards
            Expanded(
              flex: 3,
              child: Container(
                width: screen_width,
                color: Colors.blueAccent[50],
                // list consisting of 2 containers "description and cards"
                child: ListView(
                  children: <Widget>[
//                    Container(
//                  height:290, //change height of 3rd container
//                  color: Colors.pink[100],
//                  child: Column(
//                    children: <Widget>[
//                      // Container of title
//                      Container(
////                            color: Colors.yellow[100],
//                        padding: EdgeInsets.all(8.0),
//                        width: screen_width,
//                        child: Text("Speakers",style: TextStyle(fontSize: 24.0),),
//                      ),
//                      // Container for cards
//                      Container(
//                        margin: EdgeInsets.only(top:2.0),
////                            color: Colors.black,
//                        height: 230,
//                        // List of Cards
//                        child: ListView(
//                          scrollDirection: Axis.horizontal,
//                          children: <Widget>[
//                            //container for individual card in which card is placed
//                            Container(
//                              width: 160,    //change width of card
////                                  color: Colors.white,
//                              margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
//                              child: Column(
//                                children: <Widget>[
//                                  Card(
//                                    elevation: 1,
//                                    color: Colors.blue,
//                                    child: Column(
//                                      mainAxisSize: MainAxisSize.min,
//                                      children: <Widget>[
//                                        Container(
//                                          width: screen_width,
//                                          height: 150,
//                                          child: Container(
//                                            margin: EdgeInsets.all(8.0),
//                                            child: ClipOval(
//                                              child:
//                                              Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),
//
//                                            ),
//                                          ),
//                                        ),
//                                        Container(
//                                          color: Colors.red[100],
//                                          child: Container(
//                                            constraints: BoxConstraints(
//                                                minHeight: 30.0,
//                                                maxHeight: 80.0
//                                            ),
//                                            child: ListTile(
//                                              title: Text("Dr. Sanyal",),
//                                              subtitle: Container(
//                                                  child: Column(
//                                                    mainAxisSize: MainAxisSize.min,
//                                                    children: <Widget>[
//                                                      Container(
////                                                  color: Colors.grey,
//                                                          width: screen_width,
//                                                          child: Text("Director",textAlign: TextAlign.left,)),
//                                                      Container(
////                                                  color: Colors.red[400],
//                                                          width: screen_width,
//                                                          child: Text("SOET",maxLines: 2,)
//                                                      )
//                                                    ],
//                                                  )),
//
//                                            ),
//                                          ),
//                                        ),
//
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Container(
//                              width: 160,    //change width of card
////                                  color: Colors.white,
//                              margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
//                              child: Column(
//                                children: <Widget>[
//                                  Card(
//                                    elevation: 1,
//                                    color: Colors.blue,
//                                    child: Column(
//                                      mainAxisSize: MainAxisSize.min,
//                                      children: <Widget>[
//                                        Container(
//                                          width: screen_width,
//                                          height: 150,
//                                          child: Container(
//                                            margin: EdgeInsets.all(8.0),
//                                            child: ClipOval(
//                                              child:
//                                              Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),
//
//                                            ),
//                                          ),
//                                        ),
//                                        Container(
//                                          color: Colors.red[100],
//                                          child: Container(
//                                            constraints: BoxConstraints(
//                                                minHeight: 30.0,
//                                                maxHeight: 80.0
//                                            ),
//                                            child: ListTile(
//                                              title: Text("Dr. Sanyal",),
//                                              subtitle: Container(
//                                                  child: Column(
//                                                    mainAxisSize: MainAxisSize.min,
//                                                    children: <Widget>[
//                                                      Container(
////                                                  color: Colors.grey,
//                                                          width: screen_width,
//                                                          child: Text("Director",textAlign: TextAlign.left,)),
//                                                      Container(
////                                                  color: Colors.red[400],
//                                                          width: screen_width,
//                                                          child: Text("SOET",maxLines: 2,)
//                                                      )
//                                                    ],
//                                                  )),
//
//                                            ),
//                                          ),
//                                        ),
//
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Container(
//                              width: 160,    //change width of card
////                                  color: Colors.white,
//                              margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
//                              child: Column(
//                                children: <Widget>[
//                                  Card(
//                                    elevation: 1,
//                                    color: Colors.blue,
//                                    child: Column(
//                                      mainAxisSize: MainAxisSize.min,
//                                      children: <Widget>[
//                                        Container(
//                                          width: screen_width,
//                                          height: 150,
//                                          child: Container(
//                                            margin: EdgeInsets.all(8.0),
//                                            child: ClipOval(
//                                              child:
//                                              Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),
//
//                                            ),
//                                          ),
//                                        ),
//                                        Container(
//                                          color: Colors.red[100],
//                                          child: Container(
//                                            constraints: BoxConstraints(
//                                                minHeight: 30.0,
//                                                maxHeight: 80.0
//                                            ),
//                                            child: ListTile(
//                                              title: Text("Dr. Sanyal",),
//                                              subtitle: Container(
//                                                  child: Column(
//                                                    mainAxisSize: MainAxisSize.min,
//                                                    children: <Widget>[
//                                                      Container(
////                                                  color: Colors.grey,
//                                                          width: screen_width,
//                                                          child: Text("Director",textAlign: TextAlign.left,)),
//                                                      Container(
////                                                  color: Colors.red[400],
//                                                          width: screen_width,
//                                                          child: Text("SOET",maxLines: 2,)
//                                                      )
//                                                    ],
//                                                  )),
//
//                                            ),
//                                          ),
//                                        ),
//
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Container(
//                              width: 160,    //change width of card
////                                  color: Colors.white,
//                              margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
//                              child: Column(
//                                children: <Widget>[
//                                  Card(
//                                    elevation: 1,
//                                    color: Colors.blue,
//                                    child: Column(
//                                      mainAxisSize: MainAxisSize.min,
//                                      children: <Widget>[
//                                        Container(
//                                          width: screen_width,
//                                          height: 150,
//                                          child: Container(
//                                            margin: EdgeInsets.all(8.0),
//                                            child: ClipOval(
//                                              child:
//                                              Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),
//
//                                            ),
//                                          ),
//                                        ),
//                                        Container(
//                                          color: Colors.red[100],
//                                          child: Container(
//                                            constraints: BoxConstraints(
//                                                minHeight: 30.0,
//                                                maxHeight: 80.0
//                                            ),
//                                            child: ListTile(
//                                              title: Text("Dr. Sanyal",),
//                                              subtitle: Container(
//                                                  child: Column(
//                                                    mainAxisSize: MainAxisSize.min,
//                                                    children: <Widget>[
//                                                      Container(
////                                                  color: Colors.grey,
//                                                          width: screen_width,
//                                                          child: Text("Director",textAlign: TextAlign.left,)),
//                                                      Container(
////                                                  color: Colors.red[400],
//                                                          width: screen_width,
//                                                          child: Text("SOET",maxLines: 2,)
//                                                      )
//                                                    ],
//                                                  )),
//
//                                            ),
//                                          ),
//                                        ),
//
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
                    // container of description area
                    Container(
//                      color: Colors.blue[100],
                      height: screen_height*0.5,
                      child: Stack(
                        children: <Widget>[
                          // rounded card
                          SizedBox(
                            height: screen_height,
                            width: screen_width,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 1,
                              margin: EdgeInsets.only(top: 25.0,right: 15.0,left: 15.0,bottom: 15.0),
                              color: Colors.red[100],
                              // description box
                              child: Container(
                                margin: EdgeInsets.all(25.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.green[50]
                                ),
                                child: SingleChildScrollView(
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                          style: TextStyle(wordSpacing: 10.0,fontSize: 20.0),
                                          textAlign: TextAlign.left,))),
                              ),
                            ),
                          ),
                          //used stack to place INFO icon on the container
                          Positioned(
                            top: 2,
                              right: 40,
                              child: Container(
                                padding: EdgeInsets.all(8.0),

                                  decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(
                                    Icons.info,
                                    size: 28.0,
                                    color: Colors.white,
                                  )
                              ),
                          ),

                        ],
                      ),
                    ),
                    // last container consisting of cards of speakers
                    Container(
                      height:290, //change height of 3rd container
                      color: Colors.pink[100],
                      child: Column(
                        children: <Widget>[
                          // Container of title
                          Container(
//                            color: Colors.yellow[100],
                            padding: EdgeInsets.all(8.0),
                            width: screen_width,
                            child: Text("Speakers",style: TextStyle(fontSize: 24.0),),
                          ),
                          // Container for cards
                          Container(
                            margin: EdgeInsets.only(top:2.0),
//                            color: Colors.black,
                            height: 230,
                            // List of Cards
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                //container for individual card in which card is placed
                                Container(
                                  width: 160,    //change width of card
//                                  color: Colors.white,
                                  margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
                                  child: Column(
                                    children: <Widget>[
                                      Card(
                                        elevation: 1,
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              width: screen_width,
                                              height: 150,
                                              child: Container(
                                                margin: EdgeInsets.all(8.0),
                                                child: ClipOval(
                                                  child:
                                                  Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),

                                                ),
                                              ),
                                            ),
                                      Container(
                                        color: Colors.red[100],
                                        child: Container(
                                          constraints: BoxConstraints(
                                            minHeight: 30.0,
                                            maxHeight: 80.0
                                          ),
                                          child: ListTile(
                                            title: Text("Dr. Sanyal",),
                                            subtitle: Container(
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
//                                                  color: Colors.grey,
                                                        width: screen_width,
                                                        child: Text("Director",textAlign: TextAlign.left,)),
                                                    Container(
//                                                  color: Colors.red[400],
                                                        width: screen_width,
                                                        child: Text("SOET",maxLines: 2,)
                                                    )
                                                  ],
                                                )),

                                          ),
                                        ),
                                      ),

                                          ],
                                        ),
                                  ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 160,    //change width of card
//                                  color: Colors.white,
                                  margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
                                  child: Column(
                                    children: <Widget>[
                                      Card(
                                        elevation: 1,
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              width: screen_width,
                                              height: 150,
                                              child: Container(
                                                margin: EdgeInsets.all(8.0),
                                                child: ClipOval(
                                                  child:
                                                  Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),

                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.red[100],
                                              child: Container(
                                                constraints: BoxConstraints(
                                                    minHeight: 30.0,
                                                    maxHeight: 80.0
                                                ),
                                                child: ListTile(
                                                  title: Text("Dr. Sanyal",),
                                                  subtitle: Container(
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Container(
//                                                  color: Colors.grey,
                                                              width: screen_width,
                                                              child: Text("Director",textAlign: TextAlign.left,)),
                                                          Container(
//                                                  color: Colors.red[400],
                                                              width: screen_width,
                                                              child: Text("SOET",maxLines: 2,)
                                                          )
                                                        ],
                                                      )),

                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 160,    //change width of card
//                                  color: Colors.white,
                                  margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
                                  child: Column(
                                    children: <Widget>[
                                      Card(
                                        elevation: 1,
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              width: screen_width,
                                              height: 150,
                                              child: Container(
                                                margin: EdgeInsets.all(8.0),
                                                child: ClipOval(
                                                  child:
                                                  Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),

                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.red[100],
                                              child: Container(
                                                constraints: BoxConstraints(
                                                    minHeight: 30.0,
                                                    maxHeight: 80.0
                                                ),
                                                child: ListTile(
                                                  title: Text("Dr. Sanyal",),
                                                  subtitle: Container(
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Container(
//                                                  color: Colors.grey,
                                                              width: screen_width,
                                                              child: Text("Director",textAlign: TextAlign.left,)),
                                                          Container(
//                                                  color: Colors.red[400],
                                                              width: screen_width,
                                                              child: Text("SOET",maxLines: 2,)
                                                          )
                                                        ],
                                                      )),

                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 160,    //change width of card
//                                  color: Colors.white,
                                  margin: EdgeInsets.only(bottom: 8.0,left: 4.0,top: 3.0),
                                  child: Column(
                                    children: <Widget>[
                                      Card(
                                        elevation: 1,
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              width: screen_width,
                                              height: 150,
                                              child: Container(
                                                margin: EdgeInsets.all(8.0),
                                                child: ClipOval(
                                                  child:
                                                  Image.asset('assets/images/sanyal.png',fit: BoxFit.fill,),

                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.red[100],
                                              child: Container(
                                                constraints: BoxConstraints(
                                                    minHeight: 30.0,
                                                    maxHeight: 80.0
                                                ),
                                                child: ListTile(
                                                  title: Text("Dr. Sanyal",),
                                                  subtitle: Container(
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Container(
//                                                  color: Colors.grey,
                                                              width: screen_width,
                                                              child: Text("Director",textAlign: TextAlign.left,)),
                                                          Container(
//                                                  color: Colors.red[400],
                                                              width: screen_width,
                                                              child: Text("SOET",maxLines: 2,)
                                                          )
                                                        ],
                                                      )),

                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )


                  ],
                )
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
