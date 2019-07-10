import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> with SingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: '23/7'),
    Tab(text: '24/7'),
    Tab(text: '25/7'),
    Tab(text: '26/7'),
    Tab(text: '27/7'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 1,
      backgroundColor: Colors.blue,
      title: Text("July 23 - July 27"),
      centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
    ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            Day_1() ,
            Day_2(),
            Day_3(),
            Day_4(),
            Day_5(),
          ]),
    );
  }
}

class Day_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: _ListPage(day: "Day1",)

    );
  }
}

class Day_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: _ListPage(day: "Day2",)

    );
  }
}

class Day_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: _ListPage(day: "Day3",)

    );
  }
}

class Day_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: _ListPage(day: "Day4",)

    );
  }
}

class Day_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: _ListPage(day: "Day5",)

    );
  }
}




class eventCard extends StatelessWidget {
  String title;
  String time;
  String venue;
  String description;

  eventCard({
  this.title,this.description,this.time,this.venue
  });
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(2.0)),
//        Divider(color: Colors.black,),
        Container(
//          padding: EdgeInsets.only(left: 4.0,right: 4.0),
          margin: EdgeInsets.only(left: 4.0,right: 4.0),
          decoration: BoxDecoration(
            boxShadow:[new
            BoxShadow(color: Colors.grey[300],blurRadius: 3.0,spreadRadius: 0.0,offset: Offset(4.0, 2.0))],
          ),
          child: SizedBox(
            child: Card(
//            color: Colors.lightBlue[100],
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  // BOTTOM SHEET RETURNED ON TAP
                  return
                    showModalBottomSheet(
                      context: context,
                      builder: (context)
                      {
                    return Container(
                      height: screen_height*06,
                                                                                  //                      decoration: BoxDecoration(
                                                                                  //                          color: Colors.black,
                                                                                  //                        borderRadius: BorderRadius.only(
                                                                                  //                          topLeft: const Radius.circular(15.0),
                                                                                  //                          topRight: const Radius.circular(15.0),
                                                                                  //                        )
                                                                                  //                      ),
//
                      child: Container(
                                                                                    //                        decoration: BoxDecoration(
                                                                                    //                            color: Colors.black,
                                                                                    //                            borderRadius: BorderRadius.only(
                                                                                    //                              topLeft: const Radius.circular(15.0),
                                                                                    //                              topRight: const Radius.circular(15.0),
                                                                                    //                            )
                                                                                    //
                                                                                    //                        ),
                                                                                    //                          color: Colors.black,
                      // PARENT CONTAINER ON WHICH BOTTOM SHEET IS DESIGNED
                          child: Container(
                            margin: EdgeInsets.only(top:0.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[100],
                                                                                    //                                borderRadius: BorderRadius.only(
                                                                                    //                                  topLeft: const Radius.circular(15.0),
                                                                                    //                                  topRight: const Radius.circular(15.0),
                                                                                    //                                )

                            ),
                            width: screen_width,
//                            color: Colors.pink[100],
                            child: Column(
                              children: <Widget>[

                                //FIRST IMAGE CONTAINER

                                                                                    //                                Container(
                                                                                    //                                  margin: EdgeInsets.only(right: 4.0,left: 4.0,bottom: 4.0,top: 4.0),
                                                                                    //                                  width: screen_width,
                                                                                    //                                  height: 180.0,
                                                                                    //                                  color: Colors.grey,
                                                                                    //                                  child: Container(
                                                                                    //                                    child: Image.asset('assets/images/2.png',fit: BoxFit.cover),
                                                                                    //                                  ),
                                                                                    //                                ),

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
                                                              child: Text(this.title,
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
                                            color: Colors.blue[100],
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
                          )
                      ),
                    );
                  });
                },


                // CARD TILES OF EVENTS
                  // Logo to be displayed on the left
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Container(
                    height: 100,
                                                                                    //                  decoration: BoxDecoration(
                                                                                    //                    boxShadow: [new
                                                                                    //                              BoxShadow(color: Colors.black,blurRadius: 2.0)
                                                                                    //                              ],
                                                                                    //                  ),
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: double.infinity,
                          child: Container(
                                                                                    //                        child: Text("Image",style: TextStyle(fontSize: 30.0,),textAlign: TextAlign.center,),

                              width: screen_width*0.25,
                                                                                    //                          constraints: BoxConstraints(
                                                                                    //                            minWidth: 70,
                                                                                    //                            maxWidth: 110,
                                                                                    //                          ),
                            decoration: BoxDecoration(
                                                                                    //                            border: Border.all(),
                                                                                    //                              boxShadow: [new
                                                                                    //                              BoxShadow(color: Colors.blue,blurRadius: 2.0)
                                                                                    //                              ],
                                                                                    //                          color: Colors.grey,
                                                                                    //                              borderRadius: BorderRadius.circular(2.0),
                                borderRadius: BorderRadius.circular(0.0),
                                                                                    //                          border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: new AssetImage("assets/images/bmu_logo.jpg"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            width: double.infinity,
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
//                                    color: Colors.green,
                                      child: Column(
                                        children: <Widget>[

                                        Container(
//                                          color: Colors.brown,
                                            constraints: BoxConstraints(
                                              minHeight: 20.0,
                                              minWidth: double.infinity,
                                              maxWidth: double.infinity,
                                              maxHeight: 50.0
                                            ),
                                            padding: EdgeInsets.only(left: 4.0),
                                            margin: EdgeInsets.only(left: 10.0,right: 0.0,top: 4.0),
        //                                decoration: BoxDecoration(
        //                                    boxShadow: [new
        //                                    BoxShadow(color: Colors.black,blurRadius: 2.0)],
        //                                    color: Colors.grey[50],
        //                                    borderRadius: BorderRadius.circular(5.0)
        //                                ),
                                            child: Text(
                                              this.title,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                              textAlign: TextAlign.left,
                                              maxLines: 2,),
                                          ),

                                          Container(
                                            constraints: BoxConstraints(
                                              minHeight: 10.0,
                                              maxHeight: 20.0,
                                            ),
                                            padding: EdgeInsets.only(left: 10.0,),
                                            margin: EdgeInsets.only(top: 4.0,left: 4.0,),
                                            width: 250,
//                                        decoration: BoxDecoration(
//                                            boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],
//                                            color: Colors.grey[50],
//                                            borderRadius: BorderRadius.circular(5.0)
//                                        ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  this.time,
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey[500]
                                                  ),
                                                  textAlign: TextAlign.left,),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child:
                                    InkWell(
                                        onTap: (){
                                          print("venue");
                                        },
                                        child: Container(
      //                                  color: Colors.brown,
                                          padding: EdgeInsets.only(left: 4.0,),
                                          margin: EdgeInsets.only(top: 6.0,left: 4.0,right: 18.0),
                                          height: 25.0,
                                          width: 250,
      //                                  decoration: BoxDecoration(
      ////                                      boxShadow: [new
      ////                                      BoxShadow(color: Colors.black,blurRadius: 2.0)],
      //                                      color: Colors.grey[50],
      //                                      borderRadius: BorderRadius.circular(5.0)
      //                                  ),
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                child:Row(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Icon(Icons.place,color: Colors.orange[300],),
      //                                          color: Colors.red,
                                                    ),
                                                    Container(
      //                                          color: Colors.green,
                                                        margin: EdgeInsets.only(left: 2.0,top: 2.0),
                                                        child: Text(this.venue,style: TextStyle( color: Colors.grey[700]
                                                        ),))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                  )
                                ],
                              ),
                            ) ,
//                          child: Column(
//                            children: <Widget>[
//                              Container(
//                                color: Colors.brown,
//                                constraints: BoxConstraints(
//                                  minHeight: 20.0,
//                                  minWidth: double.infinity,
//                                  maxWidth: double.infinity,
//                                  maxHeight: 40.0
//                                ),
//                                padding: EdgeInsets.only(left: 4.0),
//                                margin: EdgeInsets.only(left: 10.0,right: 0.0,top: 4.0),
////                                decoration: BoxDecoration(
////                                    boxShadow: [new
////                                    BoxShadow(color: Colors.black,blurRadius: 2.0)],
////                                    color: Colors.grey[50],
////                                    borderRadius: BorderRadius.circular(5.0)
////                                ),
//                                child: Text(
//                                  this.title,
//                                  style: TextStyle(fontSize: 14.0,),textAlign: TextAlign.left,maxLines: 2,),
//                              ),
//
//                              Container(
//                                constraints: BoxConstraints(
//                                  minHeight: 10.0,
//                                  maxHeight: 20.0,
//                                ),
//                                padding: EdgeInsets.only(left: 10.0,),
//                                margin: EdgeInsets.only(top: 0.0,left: 4.0,right: 108.0,),
//                                width: 250,
////                                decoration: BoxDecoration(
////                                    boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],
////                                    color: Colors.grey[50],
////                                    borderRadius: BorderRadius.circular(5.0)
////                                ),
//                                child: Row(
//                                  mainAxisSize: MainAxisSize.min,
//                                  children: <Widget>[
//                                    Text(
//                                      this.time,
//                                      style: TextStyle(fontSize: 14.0,color: Colors.grey),textAlign: TextAlign.left,),
//                                  ],
//                                ),
//                              ),
//
//                              InkWell(
//                                onTap: (){
//                                  print("venue");
//                                },
//                                child: Container(
////                                  color: Colors.brown,
//                                  padding: EdgeInsets.only(left: 4.0,),
//                                  margin: EdgeInsets.only(top: 20.0,left: 4.0,right: 18.0),
//                                  height: 25.0,
//                                  width: 250,
////                                  decoration: BoxDecoration(
//////                                      boxShadow: [new
//////                                      BoxShadow(color: Colors.black,blurRadius: 2.0)],
////                                      color: Colors.grey[50],
////                                      borderRadius: BorderRadius.circular(5.0)
////                                  ),
//                                  child: Stack(
//                                    children: <Widget>[
//                                      Container(
//                                        child:Row(
//                                          children: <Widget>[
//                                            Container(
//                                              child: Icon(Icons.place,color: Colors.orange[300],),
////                                          color: Colors.red,
//                                            ),
//                                            Container(
////                                          color: Colors.green,
//                                                margin: EdgeInsets.only(left: 2.0,top: 2.0),
//                                                child: Text(this.venue,style: TextStyle( color: Colors.grey[700]
//                                                ),))
//                                          ],
//                                        ),
//                                      )
//                                    ],
//                                  ),
//                                ),
//                              ),
//
//                            ],
//                          ),
                            height: double.infinity,
//                          width: 80.0,
                            decoration: BoxDecoration(
//                            color: Colors.pink,
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle
                            ),
                          ),
                        ),
                        Expanded(
//                        flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4.0),
//                          color: Colors.brown,
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: (){
                                    print("Set As reminder");
                                  },
                                  child: Container(
//                                    color: Colors.blue,
                                      child: Icon(Icons.notifications,size: 23,)),
                                ),
                                const Padding(padding: EdgeInsets.only(top: 43.0)),
//                              InkWell(
//                                  onTap: (){
//                                    print("Route to more info Page");
//                                  },
//                                  child: Container(
//                                      child: Icon(Icons.info,color: Colors.blue[400],)))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

class _ListPage extends StatefulWidget {
  final String day;

  _ListPage(
      {
        Key key,
        @required
        this.day,
      }
      ) : super(key: key);

  @override
  __ListPageState createState() => __ListPageState();
}

class __ListPageState extends State<_ListPage> {


  Future getCardinfo() async{

    var firestore = Firestore.instance;
    switch(widget.day){
      case "Day1":{
        QuerySnapshot qn = await firestore.collection("student_schedule").document("Day1").collection("events").getDocuments();
        return qn.documents;
      }
      break;
      case "Day2":{
        QuerySnapshot qn = await firestore.collection("student_schedule").document("Day2").collection("events").getDocuments();
        return qn.documents;
      }
      break;
      case "Day3":{
        QuerySnapshot qn = await firestore.collection("student_schedule").document("Day3").collection("events").getDocuments();
        return qn.documents;
      }
      break;
      case "Day4":{
        QuerySnapshot qn = await firestore.collection("student_schedule").document("Day4").collection("events").getDocuments();
        return qn.documents;
      }
      break;
      case "Day5":{
        QuerySnapshot qn = await firestore.collection("student_schedule").document("Day5").collection("events").getDocuments();
        return qn.documents;
      }
      break;
    }
//    QuerySnapshot qn = await firestore.collection("student_schedule").document("Day1").collection("events").getDocuments();
//    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: FutureBuilder(
          future: getCardinfo(),
          builder: (_ , snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index){
                    var tit = snapshot.data[index].data["title"];
                    var tim = snapshot.data[index].data["time"];
                    var ven = snapshot.data[index].data["venue"];

                    return eventCard(
                      title: tit ?? '',
                    time: tim ?? '',
                    venue: ven ?? '',);

                  }
              );

            }
          }),
    );
  }
}
