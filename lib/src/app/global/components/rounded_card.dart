import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget child;
  const RoundedCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Rounded Shape
      shape: RoundedRectangleBorder(
        borderRadius: circularRadius,
      ),

      elevation: 5,

      color: black,

      child: child,
    );
  }
}
