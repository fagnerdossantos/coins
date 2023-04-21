import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class FlagImage extends StatelessWidget {
  final String path;
  const FlagImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Sizing
      height: 45,
      width: 70,

      child: ClipRRect(
        borderRadius: circularRadius,
        child: Image(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
