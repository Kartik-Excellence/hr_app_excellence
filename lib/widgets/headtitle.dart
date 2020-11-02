import 'package:flutter/material.dart';
import 'package:hr_app_excellence/resources/appcolors.dart';

class HeadTitle extends StatelessWidget {
  String string;
  HeadTitle(this.string);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10),
      tileColor: Colors.white,
      title: Text(string,
      style: TextStyle(fontFamily: 'OpenSans',fontSize: 18,color: AppColors.MIDIUM_BLACK)      ),
    );
  }
}
