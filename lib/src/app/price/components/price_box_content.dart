import 'package:coins/src/api/models/coins_model.dart';
import 'package:flutter/material.dart';

class PriceBoxContent extends StatelessWidget {
  final CoinsModel model;
  const PriceBoxContent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Alignment
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        // Price
        Text(
          "R\$ ${double.parse(model.price).toStringAsFixed(2)}",
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        // Country Name
        Text(
          model.name.replaceAll("/Real Brasileiro", ""),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
