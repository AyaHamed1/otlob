import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Order Details.dart';
import 'package:otlob_sec1/Helpers/AppBar.dart';

class Dominos extends StatefulWidget {
  @override
  _DominosState createState() => _DominosState();
}

class _DominosState extends State<Dominos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar('Order Details'),
      body: Column(
        children: <Widget>[
          buildTop(context, 'assets/dominos.png', "Domino's Pizza", '31 October',),
          SizedBox(height: 5,),
          buildAddress(context),
          buildSummary('Pepperino Pzza')
        ],
      ),);
  }
}
