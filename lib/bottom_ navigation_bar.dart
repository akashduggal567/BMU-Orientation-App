import 'package:flutter/material.dart';
import 'package:flutter_app_orientation/schedule.dart';

class BottomNavyBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomNavyBarState();  }

}

class BottomNavyBarState extends State<BottomNavyBar>{
  int selectedIndex = 0;


  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text("Home")),
    NavigationItem(Icon(Icons.favorite_border), Text("Favourite")),
    NavigationItem(Icon(Icons.search), Text("Search")),
    NavigationItem(Icon(Icons.add), Text("Add")),
    NavigationItem(Icon(Icons.person_outline), Text("Profile")),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected){
    return AnimatedContainer(
      duration: Duration(milliseconds: 270),
      height: double.maxFinite,
      width: isSelected ? 120 : 50,
      //isselect 8,8 : null
      decoration: isSelected ? BoxDecoration(
          color: Colors.lightBlue[300],
          borderRadius: BorderRadius.all(Radius.circular(50))
      ) : null,

      child: ListView(

        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                  data: IconThemeData(
                      size: 34,
                      color: isSelected ? Colors.white : Colors.black
                  ),
                  child: item.icon),Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: isSelected ?
                DefaultTextStyle.merge(
                    style:  TextStyle(
                      color: Colors.white,
                    ),
                    child: item.title): Container(),
              ),
            ],
          )

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 4,bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color : Colors.black,

            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item){
          var itemIndex = items.indexOf(item);

          return GestureDetector(

            onTap: (){
              setState(() {
                print(itemIndex);
                selectedIndex = itemIndex;
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Schedule();
                }));
              });
            },
            child: _buildItem(item, selectedIndex == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem(this.icon,this.title);

}

