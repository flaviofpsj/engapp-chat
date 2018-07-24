import 'package:flutter/material.dart';
import '../src/screens/home.dart';
import '../main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Engapp Chat",
      theme: new ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.pinkAccent,
      ),
      home: new Home(cameras),
    );
  }
}
