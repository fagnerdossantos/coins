import 'package:coins/src/layout/about/components/about_view_flag.dart';
import 'package:coins/src/layout/global/components/price/arrow_price_indicator.dart';
import 'package:coins/src/logic/controllers/currency_formatter.dart';
import 'package:coins/src/logic/models/coin.dart';
import 'package:coins/src/utils/utils.dart';
import 'package:flutter/material.dart';

import '../components/about_view_app_bar.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    //
    var coin = ModalRoute.of(context)?.settings.arguments as Coin;

    //Formatter
    final CurrencyFormatter formatter = CurrencyFormatter();
    final String currentPrice = formatter(coin.price);
    final String smallPrice = formatter(coin.low);
    final String hightPrice = formatter(coin.high);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AboutViewAppBar(
        data: coin,
      ),
      body: SizedBox.expand(
        // !
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image
            AboutViewFlag(image: coin.imagePath),

            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("R\$ $currentPrice"),
                const HorizontalSpace(width: 20),
                ArrowPriceIndicator(
                  current: coin.price,
                  min: coin.low,
                  max: coin.high,
                  size: 40,
                ),
              ],
            ),

            Column(
              children: [
                // Lower Price
                Text(
                  "Maior preço hoje",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: black.withOpacity(
                          .6,
                        ),
                      ),
                ),

                Text(
                  "R\$ $hightPrice",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: black.withOpacity(
                          .8,
                        ),
                      ),
                ),

                const VerticalSpace(height: 20),

                Text(
                  "Menor preço hoje",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: black.withOpacity(
                          .6,
                        ),
                      ),
                ),

                Text(
                  "R\$ $smallPrice",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: black.withOpacity(
                          .8,
                        ),
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
