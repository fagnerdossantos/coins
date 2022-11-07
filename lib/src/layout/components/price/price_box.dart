import 'package:flutter/material.dart';

import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/global/card_box.dart';
import 'package:coins/src/logic/models/price_region_model.dart';
import 'package:coins/utils/consts.dart';

class PriceBox extends StatelessWidget {
  final Continents continent;
  final int index;
  final Size size;
  const PriceBox({
    Key? key,
    required this.continent,
    required this.index,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Get the coins
    final regionModel = PriceRegionModel()
      ..context = context
      ..continent = continent;

    final CoinsModel coin = regionModel.coinModelGet(index: index);

    // Coin stats
    final String country = coin.key.replaceAll("/Real Brasileiro", "");
    final String price = double.parse(coin.price).toStringAsFixed(2);
    final String countryFlag = coin.flag;

    return CardBox(
      child: Column(
        // Alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          // Coin name
          Text(
            country,
            style: labelStyleText(white, 17),
            textAlign: TextAlign.center,
          ),

          // Flag
          Image(
            image: AssetImage(countryFlag),
          ),

          // Price in BRL
          Text(
            "R\$ $price",
            style: labelStyleText(white, 17),
          ),
        ],
      ),
    );
  }
}
