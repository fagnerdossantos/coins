import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReloadButton extends StatelessWidget {
  const ReloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // ACTION
      onPressed: () {},
      // ICON
      child: const Icon(Icons.reply_outlined),
    );
  }
}
