import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  String string;
  HeadTitle(this.string);
  @override
  Widget build(BuildContext context) {
    return Text(string);
  }
}
