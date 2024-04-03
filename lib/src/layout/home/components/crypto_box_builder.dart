import 'package:flutter/material.dart'
    show Axis, BuildContext, ListView, SizedBox, StatelessWidget, Widget;

import '../../../logic/models/coin.dart';
import 'crypto_box.dart';

class CryptoBoxBuilder extends StatelessWidget {
  final List<Coin> coins;

  const CryptoBoxBuilder({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Sizing
      height: 200,

      child: ListView.builder(
        // Settings
        itemCount: coins.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (_, index) {
          // Model
          final Coin model = coins[index];

          return CryptoPriceBox(
            model: model,
          );
        },
      ),
    );
  }
}
