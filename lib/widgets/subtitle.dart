import 'package:flutter/material.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';

class SubTitle extends StatelessWidget {
  String string;
  SubTitle(this.string);
  @override
  Widget build(BuildContext context) {
    return 
    ListTile(
      contentPadding: EdgeInsets.only(left: 10),
      tileColor: AppColors.EDIT_TEXT_COLOR,
      title: Text(string,
      style: TextStyle(fontFamily: 'OpenSans',fontSize: 16,)),
    );
  }
}
