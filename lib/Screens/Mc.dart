import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Order Details.dart';
import 'package:otlob_sec1/Helpers/AppBar.dart';

class Mc extends StatefulWidget {
  @override
  _McState createState() => _McState();
}

class _McState extends State<Mc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Order Details'),
      body: Column(
        children: <Widget>[
          buildTop(context, 'assets/Mc.png', "McDonald's", '31 October',),
          SizedBox(height: 5,),
          buildAddress(context),
          buildSummary('Mix 2 meals small')
        ],
      ),
    );
  }
}
