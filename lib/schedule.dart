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
            Text("aksh"),
            Text("dkmd"),
            Text("aksh"),
            Text("dkmd"),
          ]),
    );
  }
}

class Day_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: _ListPage()

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(color: Colors.black,),
        Container(
          decoration: BoxDecoration(boxShadow:[new BoxShadow(color: Colors.black,blurRadius: 5.0,)], ),
          child: Card(
            color: Colors.lightBlue[100],
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: Container(
                  height: 90,
                  child: Row(
                    children: <Widget>[
                      Container(
//                        child: Text("Image",style: TextStyle(fontSize: 30.0,),textAlign: TextAlign.center,),
                        height: 110,
                        width: 90,
                        decoration: BoxDecoration(
                            boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],
//                          color: Colors.grey,
                            borderRadius: BorderRadius.circular(2.0),
//                          border: Border.all(color: Colors.black),
                            image: DecorationImage(
                                image: new AssetImage("assets/images/bmu_logo.jpg"),
                                fit: BoxFit.contain)
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 4.0),
                              margin: EdgeInsets.only(left: 10.0,right: 18.0,top: 4.0),
                              decoration: BoxDecoration(
                                  boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],

                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Text(
                                this.title,
                                style: TextStyle(fontSize: 14.0,),textAlign: TextAlign.left,),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 10.0,),
                              margin: EdgeInsets.only(top: 8.0,left: 10.0,right: 108.0,),
                              width: 250,
                              decoration: BoxDecoration(
                                  boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    "3:30 pm - 4:30 pm",
                                    style: TextStyle(fontSize: 14.0,),textAlign: TextAlign.left,),
                                ],
                              ),
                            ),

                            InkWell(
                              onTap: (){
                                print("venue");
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 4.0,),
                                margin: EdgeInsets.only(top: 6.0,left: 10.0,right: 18.0),
                                height: 25.0,
                                width: 250,
                                decoration: BoxDecoration(
                                    boxShadow: [new BoxShadow(color: Colors.black,blurRadius: 2.0)],
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(5.0)
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      child:Row(
                                        children: <Widget>[
                                          Container(
                                            child: Icon(Icons.place),
//                                          color: Colors.red,
                                          ),
                                          Container(
//                                          color: Colors.green,
                                              margin: EdgeInsets.only(left: 2.0,top: 4.0),
                                              child: Text("Multi Purpose Hall"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        height: 110,
                        width: 235,
                        decoration: BoxDecoration(
//                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(0.0),
                            shape: BoxShape.rectangle
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                print("Set As reminder");
                              },
                              child: Container(
                                  child: Icon(Icons.notifications)),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 8.0)),
                            InkWell(
                                onTap: (){
                                  print("Route to more info Page");
                                },
                                child: Container(
                                    child: Icon(Icons.info)))
                          ],
                        ),
                      )
                    ],
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
  @override
  __ListPageState createState() => __ListPageState();
}

class __ListPageState extends State<_ListPage> {

  Future getCardinfo() async{

    var firestore = Firestore.instance;

    QuerySnapshot qn = await firestore.collection("student_schedule").document("Day1").collection("events").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: FutureBuilder(
          future: getCardinfo(),
          builder: (_ , snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: Text("Loading"),
              );
            }
            else{
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index){

                    return eventCard(
                      title: snapshot.data[index].data["title"] ,);

                  }
              );

            }
          }),
    );
  }
}
