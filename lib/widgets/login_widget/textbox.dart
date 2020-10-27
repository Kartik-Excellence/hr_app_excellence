import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  TextFormField textFormField;
  TextBox(this.textFormField);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        shadowColor: Colors.black,
        elevation: 8,
        shape: StadiumBorder(
            side: BorderSide(
          color: Colors.transparent,
        )),
        child: textFormField
      ),
    );
  }
}
