import 'package:coins/src/logic/controllers/currency_formatter.dart';
import 'package:flutter/material.dart'
    show
        AssetImage,
        BuildContext,
        Card,
        Column,
        Container,
        EdgeInsets,
        Image,
        MainAxisAlignment,
        StatelessWidget,
        Text,
        Theme,
        Widget;

import '../../../logic/models/coin.dart';
import '../../global/components/price/arrow_price_indicator.dart';

class CryptoPriceBox extends StatelessWidget {
  final Coin model;
  const CryptoPriceBox({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    //Formatter
    final CurrencyFormatter formatter = CurrencyFormatter();

    return Card(
      //
      elevation: 3,

      child: Container(
        // Sizing
        height: 200,
        width: 180,

        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Currency Flag
            Image(
              image: AssetImage("assets/images/${model.imagePath}"),
              height: 45,
            ),

            // Currency name
            Text(
              model.name.replaceAll("/Real Brasileiro", ""),
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            ArrowPriceIndicator(
              // current: double.parse(model.price),
              current: model.price,
              min: model.low,
              max: model.high,
            ),

            Text(
              "${formatter(model.price)} Reais",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
