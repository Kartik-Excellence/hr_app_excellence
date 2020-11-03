import 'package:flutter/material.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationtext.dart';
import 'package:hr_app_excellence/screen/loginscreen/loginscreen.dart';
import 'package:hr_app_excellence/screen/profilescreen/profilescreen.dart';

class NavigationList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Tooltip(message: 'Navigation',
          child: Drawer(
       // key: Key('NavigationLIst'),
        child:ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Image.asset('assets/images/logo.jpg')
            ),
            NavigationText('My Profile',ProfileScreen()),
            NavigationText('My Attendance',ProfileScreen()),
            NavigationText('Apply Leave',ProfileScreen()),
            NavigationText('My Leaves',ProfileScreen()),
            NavigationText('My Salary',ProfileScreen()),
            NavigationText('My Inventory',ProfileScreen()),
            NavigationText('My Documents',ProfileScreen()),
            NavigationText('Policy Documnets',ProfileScreen()),
            NavigationText('Holidays',ProfileScreen()),
            NavigationText('Logout',LoginScreen()),
            
        ],),
        ),
    );
  }
}