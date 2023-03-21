import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class MaxMinBadge extends StatelessWidget {
  final bool isMax;
  const MaxMinBadge({super.key, required this.isMax});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Size
      width: 75,

      // Styling
      decoration: BoxDecoration(
        color: isMax ? red : green,
        borderRadius: circularRadius,
      ),

      child: Row(
        children: [
          Icon(isMax ? Icons.arrow_upward : Icons.arrow_downward),
          Text(
            isMax ? "MAX" : "MIN",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
