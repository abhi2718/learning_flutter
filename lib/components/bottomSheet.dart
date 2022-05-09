import 'package:flutter/material.dart';

class CustomBottomSheet {
  final Color backgroundColor;
  final double height;
  final double borderRadius;
  final double padding;
  final Widget widget;
  CustomBottomSheet({
    this.backgroundColor = Colors.blue,
    this.height = 400,
    this.borderRadius = 16,
    this.padding = 16,
    required this.widget,
  });
  void bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              decoration: BoxDecoration(
                color:backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(borderRadius),
                  topRight:Radius.circular(borderRadius)
                )
              ),
              padding:EdgeInsets.all(padding),
              child: widget,
              height: height,
            ),
        backgroundColor: Colors.transparent,
       );
  }
}
