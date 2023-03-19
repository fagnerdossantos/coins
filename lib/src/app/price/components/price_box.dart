import 'package:coins/src/api/models/coins_model.dart';
import 'package:flutter/material.dart';

class PriceBox extends StatelessWidget {
  final CoinsModel model;
  const PriceBox({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Card(
          // Elevation
          elevation: 3,

          color: Colors.black.withOpacity(0.9),

          // Rounded Shape
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),

          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),

            //
            child: SizedBox(
              // Size
              width: 280,

              child: Column(
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
