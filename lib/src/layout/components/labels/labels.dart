import 'package:flutter/material.dart';

import 'package:coins/utils/consts.dart';

class Labels extends StatelessWidget {
  final String text;
  final Color color;
  const Labels({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: labelStyleText(color),
    );
  }
}
