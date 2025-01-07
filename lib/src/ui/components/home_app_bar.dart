import 'package:flutter/material.dart';

import '../../configurations/utils.dart';
import '../../data/models/coin.dart';
import '../widgets/bubble_background_effect.dart';
import '../widgets/crypto_box_builder.dart';
import 'main_price.dart';

class HomeAppBar extends StatelessWidget {
  final double height;
  final List<Coin> coins;
  const HomeAppBar({super.key, required this.height, required this.coins});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      //
      title: const Text("Coins"),
      expandedHeight: height * .4,
      //
      flexibleSpace: FlexibleSpaceBar(
        //
        background: DecoratedBox(
          //
          decoration: BoxDecoration(
            color: growthGreen.withValues(alpha: 0.5),
          ),

          child: Stack(
            children: [
              //
              BubbleBackgroundEffect(
                currenciesInitials: coins.map((e) => e.key).toList(),
              ),

              //
              Column(
                children: [
                  // DOLAR
                  Expanded(
                    child: MainPrice(
                      coin: coins.firstWhere((e) => e.key == "USD"),
                    ),
                  ),

                  CryptoBoxBuilder(coins: coins.sublist(0, 3)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
