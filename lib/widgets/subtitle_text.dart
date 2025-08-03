//Packages
import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({
    super.key,
    required this.title,
    this.fontSize = 20,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.textDecoration = TextDecoration.none,
  });
  final String title;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: textDecoration,
      ),
    );
  }
}
