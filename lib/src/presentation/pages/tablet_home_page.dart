import 'package:flutter/material.dart';

class TabletHomePage extends StatelessWidget {
  const TabletHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        // Size
        height: double.infinity,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              width.toString(),
            ),
            const Text(
              "Tablet",
            ),
          ],
        ),
      ),
    );
  }
}
