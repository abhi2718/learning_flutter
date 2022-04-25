// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final title;
  final double btnWidth;
  final double btnHeight;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final double borderRadius;
  CustomElevatedButton(
      {required this.onPressed,
      required this.title,
      this.btnWidth = 100,
      this.btnHeight = 50,
      this.backgroundColor = Colors.blue,
      this.titleColor = Colors.white,
      this.elevation = 1,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = '',
      this.borderRadius=16,
      });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(btnWidth, btnHeight),
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
          ),
          primary: backgroundColor,
          onPrimary: titleColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
    );
  }
}
