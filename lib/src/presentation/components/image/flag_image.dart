import 'package:flutter/material.dart';


class FlagImage extends StatelessWidget {
  final String image;
  const FlagImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // Shape
      borderRadius: BorderRadius.circular(
        10,
      ),

      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
