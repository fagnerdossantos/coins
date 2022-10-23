import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;
  final Color color;
  const Label({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
