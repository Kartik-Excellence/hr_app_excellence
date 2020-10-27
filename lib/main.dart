import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app_excellence/screen/loginscreen.dart';
import 'package:hr_app_excellence/screen/mainscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
