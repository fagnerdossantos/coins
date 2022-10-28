import 'package:flutter/material.dart';

class PriceBox extends StatelessWidget {
  final int index;
  final Size size;
  const PriceBox({
    Key? key,
    required this.index,
    required this.size,
  }) : super(key: key);

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

      // Content
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          // Size
          height: 160,
          width: 160,

          child: Text("$index"),
        ),
      ),
    );
  }
}
