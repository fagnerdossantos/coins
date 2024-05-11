import 'package:flutter/material.dart';

class AboutViewFlag extends StatelessWidget {
  final String image;
  const AboutViewFlag({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/images/$image"));
  }
}
