import 'package:flutter/material.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationlist.dart';
import 'package:hr_app_excellence/screen/homescreen/overview.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.GREEN_COLOR,
          title: Text('Home'),
        ),
        drawer: NavigationList(),
        body: SingleChildScrollView(
          child: Overview(),
        ),
      ),
    );
  }
}
