import 'package:flutter/material.dart';

class NavigationText extends StatelessWidget {
  String string;

  NavigationText(this.string);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(string),
    );
  }
}
