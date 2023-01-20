import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const Labels({
    super.key,
    this.color = Colors.white,
    required this.text,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
