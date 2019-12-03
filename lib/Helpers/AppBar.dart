import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Color.dart';

Widget buildAppBar(String title){
  return AppBar(
    backgroundColor: Color(getColorHexFromStr("#FBDA01")),
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15),
        child: Icon(Icons.search),
      ),
    ],
  );
}