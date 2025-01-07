import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../configurations/colors.dart';
import '../../data/models/coin.dart';
import '../../domain/usecases/currency_formatter.dart';
import '../../domain/usecases/price_manipulation.dart';
import '../components/about_view_app_bar.dart';
import '../components/min_max_price_indicator.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    var coin = GoRouterState.of(context).extra as Coin;

    // Format
    final formatter = CurrencyFormatter();
    final manipulate = PriceManipulation();

    final String currentPrice = formatter.format(coin.price);
    final String min = formatter.format(coin.low);
    final String max = formatter.format(coin.high);

    final double minPercentage = manipulate.percentageChange(
      coin.price,
      coin.low,
    );

    final double maxPercentage = manipulate.percentageChange(
      coin.price,
      coin.high,
    );

    return Scaffold(
      //
      backgroundColor: neutralGray,

      appBar: AboutViewAppBar(
        coin: coin,
      ),

      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image and Price
            Column(
              spacing: 15,
              children: [
                Image(image: AssetImage("assets/images/${coin.imagePath}")),
                Text(
                  coin.name,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  currentPrice,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),

            MinMaxPriceIndicator(
              min: min,
              max: max,
              minPercentage: minPercentage,
              maxPercentage: maxPercentage,
            )
          ],
        ),
      ),
    );
  }
}
