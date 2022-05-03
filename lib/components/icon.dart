import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconName;
  final Color iconColor;
  final double iconSize;
  final VoidCallback onPressed;
  CustomIcon(
    this.iconName,
    {
      this.iconColor = Colors.lightBlue,
      this.iconSize = 20,
      required this.onPressed
    }
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Icon(
      iconName,
      size:iconSize,
      color:iconColor,
    ),
    onTap: onPressed,
    );
  }
}
