import 'package:coins/src/layout/components/labels/labels.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      body: SizedBox(
        // Size
        height: height,
        width: width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Loading indicator
            SizedBox(
              height: 150,
              width: 150,
              child: CircularProgressIndicator(
                color: deepPurple,
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // Label
            Labels(
              color: deepPurple,
              text: "já estamos requisitando a API!...",
            )
          ],
        ),
      ),
    );
  }
}
