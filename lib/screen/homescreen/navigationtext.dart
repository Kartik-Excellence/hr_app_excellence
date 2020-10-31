import 'package:flutter/material.dart';
import 'package:hr_app_excellence/screen/profilescreen/profilescreen.dart';

class NavigationText extends StatelessWidget {
  String string;
  Widget widget;

  NavigationText(this.string,this.widget);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(string),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => widget,)  );
      },
    );
  }
}
