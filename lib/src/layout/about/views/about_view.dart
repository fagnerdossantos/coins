import 'package:coins/src/layout/global/components/price/arrow_price_indicator.dart';
import 'package:coins/src/logic/controllers/currency_formatter.dart';
import 'package:coins/src/logic/models/coin.dart';
import 'package:coins/src/utils/utils.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    //
    var coin = ModalRoute.of(context)?.settings.arguments as Coin;

    //Formatter
    final CurrencyFormatter formatter = CurrencyFormatter();
    final bool priceSmall = (coin.price < 1);

    final String price = priceSmall
        ? coin.price.toStringAsFixed(4).replaceAll(".", ",")
        : formatter(coin.price);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(coin.name.replaceAll("/Real Brasileiro", "")),
        centerTitle: true,
        backgroundColor: red.withOpacity(.5),
      ),
      body: SizedBox(
        width: double.infinity,

        // !
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image
            Image(image: AssetImage("assets/images/${coin.imagePath}")),

            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("R\$ $price"),
                const HorizontalSpace(width: 20),
                ArrowPriceIndicator(
                  current: coin.price,
                  min: coin.low,
                  max: coin.high,
                  size: 40,
                ),
              ],
            ),

            // Stats
            // Text(
            //   "Statisticas",
            //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
            //         color: black.withOpacity(.6),
            //       ),
            // ),

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
                  "R\$ $price",
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
                  "R\$ $price",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: black.withOpacity(
                          .8,
                        ),
                      ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Dollar
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/united-states.png"),
                      height: 50,
                    ),
                    const VerticalSpace(height: 10),
                    Text(
                      "\$ ${formatter(coin.price)}",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: black.withOpacity(
                              .8,
                            ),
                          ),
                    ),
                  ],
                ),

                // Eur
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/eu.png"),
                      height: 50,
                    ),
                    const VerticalSpace(height: 10),
                    Text(
                      "€ ${formatter(coin.price)}",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: black.withOpacity(
                              .8,
                            ),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
