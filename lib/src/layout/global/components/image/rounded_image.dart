import 'package:flutter/material.dart'
    show AssetImage, BuildContext, CircleAvatar, StatelessWidget, Widget;

class RoundedImage extends StatelessWidget {
  final String path;
  const RoundedImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) => CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/$path",
        ),
      );
}
