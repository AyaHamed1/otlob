import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Color.dart';

Widget buildRow({BuildContext context ,Icon icon, String text, Widget pg}){

  return InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => pg)); },
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 23,),
          Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
        ],
      ),
    ),
  );
}

Widget buildNewRow({Icon icon, String text,}){

  return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 23,),
          Text(text, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(getColorHexFromStr("612a7b"))),),
        ],
      ),
    );
}
