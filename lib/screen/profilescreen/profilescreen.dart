import 'package:flutter/material.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';
import 'package:hr_app_excellence/screen/homescreen/navigationlist.dart';
import 'package:hr_app_excellence/widgets/editnotice.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
         elevation: 0,
          backgroundColor: AppColors.GREEN_COLOR,
      ),
      drawer: NavigationList(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            EditNotice(),
            

          ],),
        ),
      ),
    );
  }
}
