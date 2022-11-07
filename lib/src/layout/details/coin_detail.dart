import 'package:flutter/material.dart';

import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/layout/components/global/appbar_builder.dart';
import 'package:coins/src/logic/models/pages_model.dart';
import 'package:coins/src/logic/models/price_region_model.dart';
import 'package:coins/utils/consts.dart';

class CoinDetail extends StatelessWidget {
  const CoinDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // Data from another screen and coin controller
    final data = ModalRoute.of(context)!.settings.arguments as List;

    /// Get the coins from list
    final priceRegionModel = PriceRegionModel()
      ..context = context
      ..continent = data[1];

    final CoinsModel coin = priceRegionModel.coinModelGet(index: data[0]);

    // Coin stats
    final String country = coin.key.replaceAll("/Real Brasileiro", "");
    final String price = double.parse(coin.price).toStringAsFixed(2);
    final String countryFlag = coin.flag;
    final String coinCode = coin.code;
    final String high = coin.high;
    final String low = coin.low;

    const String brazilianFLag = "assets/images/brazil.png";

    // Get screen size
    final Size size = MediaQuery.of(context).size;

    return PagesModel(
      size: size,

      // APPBar
      appBar: appBarBuilder(
        title: "Cotação",
        color: deepPurple,
      ),

      label: "Statísticas da Moeda",

      // Body
      child: Column(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            // Alignment
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First Country
              Column(
                children: [
                  Image(
                    image: AssetImage(countryFlag),
                  ),

                  // Some Space
                  const SizedBox(
                    height: 20,
                  ),

                  Text(
                    country,
                    style: labelStyleText(deepPurple, 20),
                  ),

                  // Some Space
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    "1 $coinCode",
                    style: labelStyleText(deepPurple, 20),
                  ),
                ],
              ),

              Column(
                children: [
                  const Image(
                    image: AssetImage(brazilianFLag),
                  ),

                  // Some Space
                  const SizedBox(
                    height: 20,
                  ),

                  Text(
                    "Real Brasileiro",
                    style: labelStyleText(deepPurple, 20),
                  ),

                  // Some Space
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    "$price BRL",
                    style: labelStyleText(deepPurple, 20),
                  ),
                ],
              ),
            ],
          ),

          // Some Space
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),

          Text(
            "Máxima BRL: $high",
            style: labelStyleText(red, 20),
          ),

          // Some Space
          const SizedBox(
            height: 20,
          ),

          Text(
            "Mínima BRL: $low",
            style: labelStyleText(green, 20),
          ),
        ],
      ),
    );
  }
}
