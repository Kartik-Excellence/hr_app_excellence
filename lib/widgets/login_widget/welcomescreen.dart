import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
             Colors.teal[900],
             Colors.teal[800],
            //  Colors.teal[700],
            //  Colors.teal[700],
             Colors.teal[800],
             Colors.teal[900],
                ])),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(
               // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Text(
                  'Human Resource Management System',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
               )
          ],
        ));
  }
}