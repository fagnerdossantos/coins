import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        // Size
        height: size.height,
        width: size.width,

        child: Center(
          child: Lottie.asset(
            "assets/animations/loading.json",
          ),
        ),
      ),
    );
  }
}
