import 'package:flutter/material.dart';

class CoinsBuilder extends StatelessWidget {
  const CoinsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: 170,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  // Color
                  color: Colors.deepPurple,

                  // Shape
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          );
        });
  }
}
