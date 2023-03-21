import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class FlagCoinImage extends StatelessWidget {
  final String image;
  const FlagCoinImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 70,
      child: ClipRRect(
        borderRadius: circularRadius,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
