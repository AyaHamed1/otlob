import 'package:flutter/material.dart';
import 'package:otlob_sec1/Screens/Credits.dart';
import 'package:otlob_sec1/Screens/Help.dart';
import 'package:otlob_sec1/Screens/Locations.dart';
import 'package:otlob_sec1/Screens/My%20Orders.dart';
import 'package:otlob_sec1/Screens/Notifications.dart';
import 'package:otlob_sec1/Screens/Offers.dart';
import 'Row.dart';

Widget buildDrawer({BuildContext context}){
  return Drawer(
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Aya Hamed", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),

      body: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        buildRow(context: context, icon: Icon(Icons.home, color: Colors.grey,), text: "Home", pg: Locations()),
        buildRow(context: context, icon: Icon(Icons.shopping_cart, color: Colors.grey,), text: "My Orders", pg: MyOrders()),
        buildRow(context: context, icon: Icon(Icons.local_offer, color: Colors.grey,), text: "Offers", pg: Offers()),
        buildRow(context: context, icon: Icon(Icons.notifications, color: Colors.grey,), text: "Notifications", pg: Notifications()),
        buildRow(context: context, icon: Icon(Icons.credit_card, color: Colors.grey,), text: "Otlob Credits", pg: Credits()),
          Divider(color: Colors.grey[800],),
        buildRow(context: context, icon: Icon(Icons.help_outline, color: Colors.grey,), text: "Get Help", pg: Help()),
        Divider(color: Colors.grey[800],),
        Padding(
          padding: const EdgeInsets.all(23),
          child: Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[800])),
        ),
        Padding(
          padding: const EdgeInsets.all(23),
          child: Text('Share App', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[800])),
        ),
      ],),
    ),
  );
}