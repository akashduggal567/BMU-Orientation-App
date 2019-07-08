import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

import 'map.dart';


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
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width,175.0),
                padding: EdgeInsets.all(10.0),),
            ),
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width,175.0),
                padding: EdgeInsets.all(10.0),),
            )
          ],
        )

    );
  }
}


Container FrontWidget(){
  return Container(
    color: Colors.blue,
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.brown
              ),
            )
        ),
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
            )
        ),
      ],
    ),
  );
}

Container InnerTopWidget(){
  return Container(
    color: Colors.lightGreen,

  );
}

Container InnerBottomWidget(){
  return Container(
    color: Colors.white,

  );
}

