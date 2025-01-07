import 'package:flutter/material.dart'
    show
        BoxConstraints,
        BuildContext,
        CarouselView,
        ConstrainedBox,
        StatelessWidget,
        Widget;

import '../../configurations/colors.dart';
import '../../data/models/coin.dart';
import '../components/crypto_box.dart';

class CryptoBoxBuilder extends StatelessWidget {
  final List<Coin> coins;

  const CryptoBoxBuilder({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    //
    const double height = 150;
    const double itemExtent = 150;
    const double shrinkExtent = 100;

    return ConstrainedBox(
      //
      constraints: BoxConstraints(maxHeight: height),

      child: CarouselView(
        //
        itemExtent: itemExtent,
        shrinkExtent: shrinkExtent,

        children: [
          for (int i = 0; i < coins.length; i++)
            CryptoBox(
              coin: coins[i],
              color: switch (i) {
                0 => btcColor,
                1 => ethColor,
                _ => xrpColor,
              },
            ),
        ],
      ),
    );
  }
}
