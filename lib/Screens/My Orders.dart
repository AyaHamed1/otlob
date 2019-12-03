import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/AppBar.dart';
import 'package:otlob_sec1/Helpers/Drawer.dart';
import 'package:otlob_sec1/Screens/Dominos.dart';
import 'package:otlob_sec1/Screens/KFC.dart';
import 'package:otlob_sec1/Screens/Mc.dart';


class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {

  Widget buildItem(String image, String resName, String date, Widget pg){
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        color: Colors.white,
        height: 150, width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => pg)); },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Image.asset(image, height: 70, width: 70,),
                SizedBox(width: 10,),
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(resName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(children: <Widget>[
                    Text(date, style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                    Text('14:30 pm', style: TextStyle(fontSize: 15),),
                  ],),
                    SizedBox(height: 10,),
                  Row(children: <Widget>[
                    Text("Order ID: 18544376", style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10,),
                    Text('Delivered', style: TextStyle(fontSize: 15, color: Colors.green),),
                  ],)
                ],),
                Expanded(child: SizedBox()),
                Icon(Icons.arrow_right, size: 30,),
              ],),
            ),
          ),
          Row(children: <Widget>[
            Container(height: 40, width: MediaQuery.of(context).size.width*0.5,
              decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey), right: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey), left: BorderSide(color: Colors.grey))),
              child: Center(child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Icon(Icons.star_border, size: 30,),
                  SizedBox(width: 10,),
                Text('RATE ORDER', style: TextStyle(fontSize: 16),)
              ],),),
            ),
            Container(height: 40, width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey), right: BorderSide(color: Colors.grey),
                    bottom: BorderSide(color: Colors.grey), left: BorderSide(color: Colors.grey))),
              child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Icon(Icons.refresh, size: 30,),
                SizedBox(width: 10,),
                Text('REORDER', style: TextStyle(fontSize: 16),)
              ],),),
            ),
          ],)
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('My Orders'),
      drawer: buildDrawer(),
      body: ListView(children: <Widget>[
        buildItem("assets/dominos.png", "Domino's Pizza", "31 October 2019", Dominos()),
        buildItem("assets/Mc.png", "McDonald's", "28 October 2019", Mc()),
        buildItem("assets/Mc.png", "McDonald's", "20 October 2019", Mc()),
        buildItem("assets/kfc.png", "KFC - Governates", "10 September 2019", KFC()),
        buildItem("assets/Mc.png", "McDonald's", "15 October 2019", Mc()),
        buildItem("assets/Mc.png", "McDonald's", "1 October 2019", Mc()),
        buildItem("assets/dominos.png", "Domino's Pizza", "25 September 2019", Dominos()),
        buildItem("assets/dominos.png", "Domino's Pizza", "18 September 2019", Dominos()),
        buildItem("assets/kfc.png", "KFC - Governate", "23 August 2019", KFC()),
      ],),
    );
  }
}