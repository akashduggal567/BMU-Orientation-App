import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Parent_Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Parent_Schedule> with SingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: '22 July',),

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
        title: Text("Parents Orientation"),
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
  final AsyncMemoizer _memoizer = AsyncMemoizer();
  Future _data;

  Future getCardinfo() async{

    var firestore = Firestore.instance;
    switch(widget.day){
      case "Day1":{
        QuerySnapshot qn = await firestore.collection("parent_schedule").document("Day1").collection("events").getDocuments();
        print("DAY1  DAY1");
        return qn.documents;
      }
      break;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _data = getCardinfo();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      child: FutureBuilder(
          future: _data,
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
                    var description = snapshot.data[index].data["description"];
                    var day = widget.day;
                    var card_clicked = index.toString();
                    return eventCard(
                      title: tit ?? '',
                      time: tim ?? '',
                      venue: ven ?? '',
                      description: description ?? 'No more information is provided',
                      day: day,
                      event_number: card_clicked,

                    );

                  }
              );

            }
          }),
    );
  }
}

class eventCard extends StatelessWidget {
  String title;
  String time;
  String venue;
  String description;
  String day;
  String event_number;

  eventCard({
    this.title,this.description,this.time,this.venue,this.day,this.event_number,
  });
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(padding: EdgeInsets.all(.0)),
//        Divider(color: Colors.black,),
        Container(
          padding: EdgeInsets.all(4.0),
//          margin: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            boxShadow:[new
            BoxShadow(color: Colors.grey[300],blurRadius: 3.0,spreadRadius: 0.0,offset: Offset(4.0, 2.0))],
          ),
          child: SizedBox(
            child: Card(
//            color: Colors.lightBlue[100],
            elevation: 10,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                  print(day);
                  // BOTTOM SHEET RETURNED ON TAP

                  return
                    showModalBottomSheet(
                        context: context,
                        builder: (context)
                        {
                          return Container(
                            height: screen_height*06,

//
                            child: Container(

                              // PARENT CONTAINER ON WHICH BOTTOM SHEET IS DESIGNED
                                child: Container(
                                  margin: EdgeInsets.only(top:0.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(20.0)
                                      )
                                  ),
                                  width: screen_width,
//                            color: Colors.pink[100],
                                  child: Column(
                                    children: <Widget>[

                                      //starting of second main container which consists of description and cards

                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                            width: screen_width,
                                            color: Colors.blueAccent[50],
                                            // list consisting of 2 containers "description and cards"
                                            child: ListView(
                                              children: <Widget>[

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
                                                                    child: Text(this.description,
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
                                                  height:320, //change height of 3rd container
//                                                  color: Colors.black,
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
                                                        height: 270,
                                                        // List of Cards
                                                        child: GuestListPage(day: day,event_serial: event_number),
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

                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Container(
                    height: 100,

                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        // Logo to be displayed on the left
                        SizedBox(
                          height: double.infinity,
                          child: Container(
                            //                        child: Text("Image",style: TextStyle(fontSize: 30.0,),textAlign: TextAlign.center,),

                            width: screen_width*0.25,

                            decoration: BoxDecoration(
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
                                            //
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
                                        //
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
//
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
//
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
        Padding(padding: EdgeInsets.all(2.0))

      ],
    );
  }
}


class guestSpeakersCard extends StatelessWidget {

  String guest_image;
  String guest_name;
  String guest_designation;
  String guest_company;

  guestSpeakersCard({
    this.guest_image,this.guest_name,this.guest_designation,this.guest_company
  });
  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width;
    var screen_height = MediaQuery.of(context).size.height;
    return Container(
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
                        Image.network(guest_image,fit: BoxFit.fill,),
//                      Image.asset('assets/images/1.png',fit: BoxFit.fill,),

                    ),
                  ),
                ),
                Container(
                  color: Colors.red[100],
                  child: Container(
                    constraints: BoxConstraints(
                        minHeight: 30.0,
                        maxHeight: 90.0
                    ),
                    child: ListTile(
                      title: Container(
//                        color: Colors.green[100],
                          width: screen_width,
                          child: Text(guest_name,)),
                      subtitle: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
//                                                  color: Colors.grey,
                                  width: screen_width,
                                  child: Text(guest_designation,textAlign: TextAlign.left,)),
                              Container(
//                                                  color: Colors.red[400],
                                  width: screen_width,
                                  child: Text(guest_company,maxLines: 2,)
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
    );
  }
}


class GuestListPage extends StatefulWidget {
  String day;
  String event_serial;

  GuestListPage(
      {
        Key key,
        @required
        this.day,
        this.event_serial,
      }
      ) : super(key: key);
  @override
  _GuestListPageState createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {

  Future GuestCardinfo() async{
    var firestore = Firestore.instance;

    QuerySnapshot qn = await firestore.collection("parent_schedule_delegates").document(widget.day).collection("events").document(widget.event_serial).collection("guests").getDocuments();
    print("DAY1");
    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: GuestCardinfo(),
            builder: (_,snapshot){
              if (snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              else{
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index){
                    var name = snapshot.data[index]["name"];
                    var designation = snapshot.data[index]["designation"];
                    var company = snapshot.data[index]["company"];
                    var image = snapshot.data[index]["image"];
                    return guestSpeakersCard(
                      guest_name: name ?? 'no',
                      guest_designation: designation ?? 'no',
                      guest_company: company ?? 'no',
                      guest_image: image ?? "No image provided",

                    );
                  },
                );
              }
            })
    );
  }
}


