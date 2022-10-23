import 'package:flutter/material.dart';

import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/utils/consts.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    const List<EnumCoins> controller = EnumCoins.values;

    return Scaffold(
      body: SizedBox(
        // Size
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),

            // Progress indicator
            const SizedBox(
              // Size
              height: 100,
              width: 100,

              child: CircularProgressIndicator(
                color: blue,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Information
            const Expanded(
              flex: 1,
              child: Text(
                "Olá! Já estamos requisitando a API",
                style: TextStyle(
                  color: blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
                children: List.generate(
                  controller.length,
                  (index) => Image(
                    image: AssetImage(controller[index].img),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
