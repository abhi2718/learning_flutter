import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String labelText;
  final String hintText;
  final double labelSize;
  final Color labelColor;
  final String labelFontFamily;
  final FontWeight labelfontWeight;
  final double hintTextSize;
  final Color hintTextColor;
  final String hintFontFamily;
  final FontWeight hintfontWeight;
  Input(
      {this.labelText = '',
      this.hintText = '',
      this.labelSize = 20,
      this.labelColor = Colors.blue,
      this.labelFontFamily = '',
      this.labelfontWeight = FontWeight.w400,
      this.hintTextSize = 16,
      this.hintTextColor = Colors.black12,
      this.hintFontFamily = '',
      this.hintfontWeight = FontWeight.w200,
      });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
              fontSize: labelSize,
              color: labelColor,
              fontFamily: labelFontFamily,
              fontWeight: labelfontWeight),
          hintStyle: TextStyle(
              fontSize: hintTextSize,
              color: hintTextColor,
              fontFamily: labelFontFamily,
              fontWeight: labelfontWeight),
              ),
    );
  }
}
// https://www.youtube.com/watch?v=eWa6iGncZ5Q