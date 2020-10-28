import 'package:flutter/material.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationtext.dart';

class NavigationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Image.asset('assets/images/logo.jpg')
          ),
          NavigationText('My Profile'),
          NavigationText('My Attendance'),
          NavigationText('Apply Leave'),
          NavigationText('My Leaves'),
          NavigationText('My Salary'),
          NavigationText('My Inventory'),
          NavigationText('My Documents'),
          NavigationText('Policy Documnets'),
          NavigationText('Holidays'),
          NavigationText('Logout'),
          
      ],),
      );
  }
}