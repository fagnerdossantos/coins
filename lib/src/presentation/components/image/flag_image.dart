import 'package:flutter/material.dart';

class FlagImage extends StatelessWidget {
  final String image;
  final String initials;
  const FlagImage({
    Key? key,
    required this.image,
    required this.initials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Label
        Text(
          initials,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        // Image
        ClipRRect(
          // Shape
          borderRadius: BorderRadius.circular(
            10,
          ),

          child: Image(
            image: AssetImage(image),
          ),
        ),
      ],
    );
  }
}
