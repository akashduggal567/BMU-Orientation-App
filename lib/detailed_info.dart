import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';


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
      body: SafeArea(
        child: Container(

          // PARENT CONTAINER ON WHICH BOTTOM SHEET IS DESIGNED
            child: Container(
              margin: EdgeInsets.only(top:0.0),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
//                  borderRadius: BorderRadius.only(
//                      topRight: Radius.circular(20.0),
//                      topLeft: Radius.circular(20.0)
//                  )
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
                                                child: Text("Description",
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
                                    child: GuestListPage(day: "Day1",event_serial: "1"),
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
      ),
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

