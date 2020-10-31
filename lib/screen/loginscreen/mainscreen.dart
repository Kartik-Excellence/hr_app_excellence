
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hr_app_excellence/screen/loginscreen/loginscreen.dart';
import 'package:hr_app_excellence/screen/loginscreen/splashscreen.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,MaterialPageRoute(builder:(context)=> LoginScreen())
      )
    );
  }

  Widget build(BuildContext context) {
    return SplashSCreen();
  }
}
