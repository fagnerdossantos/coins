import 'package:api_module/api_module.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceBox extends StatelessWidget {
  final Continent continent;
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
    final key = coin.key;
    final price = coin.price;

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

          child: Text("$index -> $key  $price"),
        ),
      ),
    );
  }
}

List<CoinsModel> _regionSet(BuildContext context, Continent continent) {
  // Coin Controller
  final controller = context.watch<CoinsStore>();

  if (continent == Continent.america) {
    return controller.america;
  } else if (continent == Continent.africa) {
    return controller.africa;
  } else if (continent == Continent.asia) {
    return controller.asia;
  } else if (continent == Continent.europe) {
    return controller.europe;
  } else {
    return controller.oceania;
  }
}
