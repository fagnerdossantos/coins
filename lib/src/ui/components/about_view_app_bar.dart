import 'package:flutter/material.dart';

import '../../data/models/coin.dart';
import '../../configurations/utils.dart';

class AboutViewAppBar extends StatelessWidget implements PreferredSize {
  final Coin coin;
  const AboutViewAppBar({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    //
    final (current, high, low) = (coin.price, coin.high, coin.low);

    Color setColor() {
      if (current == low) {
        return pureRed;
      } else if (current == high) {
        return growthGreen;
      } else {
        double proximityToMin = current - low;
        double proximityToMax = high - current;

        if (proximityToMax < proximityToMin) {
          return growthGreen;
        } else {
          return pureRed;
        }
      }
    }

    return AppBar(
      title: Text(
        coin.key,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: neutralGray,
            ),
      ),
      centerTitle: true,
      backgroundColor: setColor(),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
