import 'package:flutter/material.dart';

import 'package:coins/utils/consts.dart';

class Labels extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const Labels({
    Key? key,
    this.color = Colors.white,
    required this.text,
    this.fontSize = 22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: labelStyleText(color, fontSize),
    );
  }
}
