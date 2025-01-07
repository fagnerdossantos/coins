import 'package:flutter/material.dart';

import '../../configurations/utils.dart';
import '../../data/models/coin.dart';
import '../../domain/usecases/currency_formatter.dart';

class MainPrice extends StatelessWidget {
  final Coin coin;

  const MainPrice({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    //

    final formatter = CurrencyFormatter();

    const String label = "USD";
    final String price = formatter.format(coin.price);

    const primary = neutralGray;
    const secondary = Colors.blueGrey;
    List<Shadow> shadows = [
      Shadow(
        color: secondary,
        offset: Offset(1, 1),
        blurRadius: 1,
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        //
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: primary, shadows: shadows),
        ),

        //
        Text(
          price,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: primary,
                shadows: shadows,
                fontSize: 30,
              ),
        ),
      ],
    );
  }
}
