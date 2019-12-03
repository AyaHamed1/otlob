import 'package:flutter/material.dart';
import 'package:otlob_sec1/Helpers/Color.dart';
import 'dart:async';
import 'package:otlob_sec1/Screens/Locations.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Locations())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(getColorHexFromStr("#FBDA01")),
      body: Center(
        child: Image.asset('assets/logo.jpg', height: 150, width: 150,),
      ),
    );
  }
}