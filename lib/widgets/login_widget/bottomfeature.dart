import 'package:flutter/material.dart';

class BottomFeature extends StatelessWidget {
  String string;
  BottomFeature(this.string);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 16, 16, 8),
      child: Text(string,style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }
}
