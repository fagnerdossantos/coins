import 'package:flutter/material.dart';

import 'package:coins/utils/consts.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // Size
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              // Size
              height: 100,
              width: 100,

              child: CircularProgressIndicator(
                color: blue,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Olá! Já estamos requisitando a API"),
          ],
        ),
      ),
    );
  }
}
