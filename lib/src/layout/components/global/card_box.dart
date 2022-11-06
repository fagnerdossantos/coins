import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardBox extends StatelessWidget {
  final Widget child;
  const CardBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Style
      color: Colors.deepPurple,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          // Size
          height: 160,
          width: 160,

          child: child,
        ),
      ),
    );
  }
}
