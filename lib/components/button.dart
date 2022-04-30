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
  final double horizontalPadding;
  final double verticalPadding;
  CustomElevatedButton({
    required this.onPressed,
    required this.title,
    this.btnWidth = 100,
    this.btnHeight = 50,
    this.backgroundColor = Colors.blue,
    this.titleColor = Colors.white,
    this.elevation = 1,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = '',
    this.borderRadius = 16,
    this.horizontalPadding = 20,
    this.verticalPadding = 20,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ElevatedButton.styleFrom(
        //fixedSize: Size(btnWidth, btnHeight),
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
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color titleColor;
  final double btnWidth;
  final double btnHeight;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  CustomOutlinedButton({
    required this.onPressed,
    required this.title,
    this.btnWidth = 100,
    this.btnHeight = 50,
    this.titleColor = Colors.black,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = '',
    this.borderRadius = 16,
    this.borderWidth = 1,
    this.borderColor = Colors.blue,
    this.horizontalPadding = 2,
    this.verticalPadding = 2,
  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(title),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        primary: titleColor,
        fixedSize: Size(btnWidth, btnHeight),
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        side: BorderSide(
          width: borderWidth,
          color: borderColor,
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color titleColor;
  final double btnWidth;
  final double btnHeight;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  CustomTextButton({
    required this.onPressed,
    required this.title,
    this.btnWidth = 100,
    this.btnHeight = 50,
    this.titleColor = Colors.black,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = '',
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(title),
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: titleColor,
        fixedSize: Size(btnWidth, btnHeight),
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final double iconSize;
  final VoidCallback onPressed;
  final Color iconColor;
  final IconData iconName;
  CustomIconButton({
    this.iconSize = 32,
    required this.onPressed,
    this.iconColor = Colors.blue,
    required this.iconName,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: iconSize,
        icon: Icon(
          iconName,
        ),
        color: iconColor,
        onPressed: onPressed);
  }
}

class ElevatedIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData iconName;
  final Color iconColor;
  final double iconSize;
  final double btnWidth;
  final double btnHeight;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final double borderRadius;
  final double horizontalPadding;
  final double verticalPadding;
  ElevatedIconButton({
    required this.title, 
    required this.iconName,
    required this.onPressed,
    this.iconColor=Colors.white,
    this.iconSize=30,
    this.btnWidth = 250,
    this.btnHeight = 80,
    this.backgroundColor = Colors.blue,
    this.titleColor = Colors.white,
    this.elevation = 1,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = '',
    this.borderRadius = 16,
    this.horizontalPadding = 10,
    this.verticalPadding = 10,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon:Icon(iconName,
      color:iconColor,
      size: iconSize,
      ),
      label: Text(title),
      style:ElevatedButton.styleFrom(
        //fixedSize: Size(btnWidth, btnHeight),
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
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        )
      )
    );
  }
}
