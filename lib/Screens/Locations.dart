import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Color.dart';
import 'package:otlob_sec1/Helpers/Drawer.dart';
import 'package:otlob_sec1/Helpers/AppBar.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  String item = '';
  void _selectItem(String name){
    Navigator.pop(context);
    setState(() {
      item = name;
    });
  }

  void _onButtonPressed(){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 230,
        child: Column(children: <Widget>[
          ListTile(leading: Icon(Icons.location_on), title: Text('My Apartment', style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Color(getColorHexFromStr("612a7b")))), onTap: ()=> _selectItem('My Apartment (Mansoura)'),),
          ListTile(leading: Icon(Icons.location_on), title: Text('Home', style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Color(getColorHexFromStr("612a7b")))), onTap: ()=> _selectItem('Home (Hay El Gamaa)'),),
          ListTile(leading: Icon(Icons.location_on), title: Text('Work', style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Color(getColorHexFromStr("612a7b")))), onTap: ()=> _selectItem('Work (Talkha)'),),
          ListTile(leading: Icon(Icons.location_on), title: Text('Different Location', style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.green[700])), onTap: ()=> _selectItem('Different Location'),),
        ],),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(''),
      drawer: buildDrawer(context: context),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: Image.asset("assets/logo2.png", height: 90, width: 150,)),
            Center(child: Text('Order food online in Egypt', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold), )),
            SizedBox(height: 15,),
            Text('Deliver to', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),),
            SizedBox(height: 7,),
            Container( height: 60,
              child: RaisedButton(onPressed: _onButtonPressed,
                  color: Colors.white,
                  child: Row(children: <Widget>[
                    Icon(Icons.location_on, color: Color(getColorHexFromStr("612a7b")), size: 22,),
                    SizedBox(width: 15,),
                    Text(item, style: TextStyle(fontSize: 17),),
                    Expanded(child: SizedBox(),),
                    Icon(Icons.arrow_right, size: 30,)
              ],)),
            ),
            SizedBox(height: 25,),
            Container(
              height: 60, width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Colors.green[500]),
              child: Center(child: Text('FIND RESTAURRANT', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),),
            ),
            SizedBox(height: 50,),
            Divider(color: Colors.grey[600], height: 20,),
            SizedBox(height: 120,),
            Row(children: <Widget>[
              Text(''),
            ],)
          ],
        ),
      ),
    );
  }
}
