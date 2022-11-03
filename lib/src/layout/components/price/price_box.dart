import 'package:coins/src/api/helpers/continents_helper.dart';
import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    return Card(
      // Style
      color: Colors.deepPurple,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),

      // Content
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          // Size
          height: 160,
          width: 160,

          child: Column(
            children: [
              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),

              // Coin name
              Expanded(
                flex: 1,
                child: Text(key),
              ),

              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),

              // Flag
              Expanded(
                flex: 5,
                child: Image(
                  image: AssetImage(image),
                ),
              ),

              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),

              // Price in BRL
              Expanded(
                flex: 1,
                child: Text("R\$ $price"),
              ),

              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<CoinsModel> _regionSet(BuildContext context, Continents continent) {
  // Coin Controller
  final controller = context.watch<CoinsStore>();

  if (continent == Continents.america) {
    return controller.america;
  } else if (continent == Continents.africa) {
    return controller.africa;
  } else if (continent == Continents.asia) {
    return controller.asia;
  } else if (continent == Continents.europe) {
    return controller.europe;
  } else {
    return controller.oceania;
  }
}
