import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'splash.dart';
import 'home.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // fixing app orientation.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          hintColor: Colors.white,
          inputDecorationTheme: new InputDecorationTheme(
              labelStyle: new TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0)))),
      home: new SplashPage(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => new MyHomePage(),
        'FirstPage': (BuildContext context) => new First(),
      'SecondPage': (BuildContext context) => new Second(),
        'ThirdPage': (BuildContext context) => new Third(),
        "/extractArguments": (context) => ExtractArgumentsScreen(),
    "/about": (_) => new WebviewScaffold(
    url: "https://www.rowan.edu/fossils",
    appBar: new AppBar(
    title: new Text("RU Fossil Park"),
    backgroundColor: Color(0xFFFFCC00),
    ) ),

    },
    );
  }
}

//https://pub.dartlang.org/packages/splashscreen