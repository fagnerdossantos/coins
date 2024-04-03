import 'package:flutter/material.dart'
    show BuildContext, Column, MainAxisAlignment, StatelessWidget, Text, Widget;

import '../../../../logic/controllers/currency_formatter.dart';
import '../../../../logic/models/coin.dart';

class CoinPrice extends StatelessWidget {
  final Coin model;
  const CoinPrice({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    //Formatter
    final CurrencyFormatter formatter = CurrencyFormatter();
    final bool priceSmall = (model.price < 1);

    final String price = priceSmall
        ? model.price.toStringAsFixed(4).replaceAll(".", ",")
        : formatter(model.price);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "1 ${model.key.replaceAll("BRL", "")}",
        ),
        Text("$price BRL"),
      ],
    );
  }
}
