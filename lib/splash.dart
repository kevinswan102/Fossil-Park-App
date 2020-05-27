import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  void navigationToNextPage() {
    Navigator.pushNamed(context, '/HomePage');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {

    // To make this screen full screen.
    // It will hide status bar and notch.
    SystemChrome.setEnabledSystemUIOverlays([]);

    // full screen image for splash screen.
  return new Container(
      color: Color(0xFFFFCC00),
      child: new Center(
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[


        new Image.asset(
          'assets/rulogo.png',
        ),

    new Text('\n\n'),

    new Image.asset(
    'assets/logo.png',
      width: 250,
      height: 200,



    ),


      ])));
  }
}