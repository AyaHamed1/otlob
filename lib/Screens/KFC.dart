import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Order Details.dart';
import 'package:otlob_sec1/Helpers/AppBar.dart';

class KFC extends StatefulWidget {
  @override
  _KFCState createState() => _KFCState();
}

class _KFCState extends State<KFC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar('Order Details'),
      body: Column(
        children: <Widget>[
          buildTop(context, 'assets/kfc.png', "KFC - Governate", '31 October',),
          SizedBox(height: 5,),
          buildAddress(context),
          buildSummary('Toasted Twister')
        ],
      ),);
  }
}
