import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/app/global/components/rounded_card.dart';
import 'package:coins/src/app/price/components/price_box_content.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class PriceBox extends StatelessWidget {
  final CoinsModel model;
  const PriceBox({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: SizedBox(
        // Size
        width: 250,

        child: Container(
          // Styling
          decoration: BoxDecoration(
            // Gradient
            gradient: LinearGradient(
              colors: priceBoxGradient,

              // Gradient Align
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: const GradientRotation(1.3),
            ),

            // Shape
            borderRadius: circularRadius,
          ),

          child: PriceBoxContent(
            model: model,
          ),
        ),
      ),
    );
  }
}
