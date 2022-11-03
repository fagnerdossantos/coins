import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class Flags extends StatelessWidget {
  final String image;
  const Flags({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        100,
      ),
      child: Container(
        height: 70,
        width: 120,

        // Styling and image background
        decoration: BoxDecoration(
          // Border
          border: Border.all(
            color: deepPurple,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            100,
          ),

          // Image
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
