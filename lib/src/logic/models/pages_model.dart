import 'package:flutter/material.dart';

import 'package:coins/src/layout/components/labels/labels.dart';
import 'package:coins/utils/consts.dart';

class PagesModel extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final String label;
  final Widget child;
  final Size size;
  final Widget? floatingActionButton;

  const PagesModel({
    Key? key,
    this.appBar,
    required this.label,
    required this.child,
    required this.size,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color
      backgroundColor: deepPurple,

      // App Bar
      appBar: appBar,

      // Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 30,
          ),

          // Home Label
          Expanded(
            child: Labels(
              color: white,
              fontSize: 16,
              text: label,
            ),
          ),

          // Home Content
          ClipRRect(
            // Shape
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),

            child: Container(
              // Size
              height: size.height * .8,
              width: size.width,
              padding: const EdgeInsets.only(left: 5),

              // Color
              color: white,

              child: child,
            ),
          ),
        ],
      ),

      floatingActionButton: floatingActionButton,
    );
  }
}
