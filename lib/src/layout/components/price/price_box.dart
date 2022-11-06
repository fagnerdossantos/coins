import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/global/card_box.dart';
import 'package:coins/src/layout/components/global/expanded_space.dart';

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
    /// Get the coins from list
    final List<CoinsModel> coinList = _regionSet(context, continent);
    final CoinsModel coin = coinList[index];

    // Coin stats
    final String key = coin.key.replaceAll("/Real Brasileiro", "");
    final String price = double.parse(coin.price).toStringAsFixed(2);
    final String image = coin.flag;

    return CardBox(
      child: Column(
        children: [
          // Give Some space
          const ExpandedSpace(),

          // Coin name
          Expanded(
            flex: 1,
            child: Text(key),
          ),

          // Give Some space
          const ExpandedSpace(),

          // Flag
          Expanded(
            flex: 5,
            child: Image(
              image: AssetImage(image),
            ),
          ),

          // Give Some space
          const ExpandedSpace(),

          // Price in BRL
          Expanded(
            flex: 1,
            child: Text("R\$ $price"),
          ),

          // Give Some space
          const ExpandedSpace(),
        ],
      ),
    );
  }
}

List<CoinsModel> _regionSet(BuildContext context, Continents continent) {
  // Coin Controller
  final controller = context.watch<CoinsStore>();

  switch (continent) {
    case Continents.africa:
      return controller.africa;

    case Continents.america:
      return controller.america;

    case Continents.asia:
      return controller.asia;

    case Continents.europe:
      return controller.europe;

    case Continents.oceania:
      return controller.oceania;
  }
}
