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
        color: isMax ? Colors.red : Colors.green,
        borderRadius: BorderRadius.circular(
          20,
        ),
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
