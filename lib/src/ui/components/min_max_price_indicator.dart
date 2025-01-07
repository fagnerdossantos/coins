import 'package:flutter/material.dart';

import '../../configurations/utils.dart';

class MinMaxPriceIndicator extends StatelessWidget {
  final String min, max;
  final double minPercentage, maxPercentage;
  const MinMaxPriceIndicator({
    super.key,
    required this.min,
    required this.max,
    required this.minPercentage,
    required this.maxPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Text(
          "Maior preço hoje",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Text(
              max,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "${maxPercentage.toStringAsFixed(2)}%",
              style: TextStyle(
                color: maxPercentage < 0 ? pureRed : growthGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              maxPercentage < 0
                  ? Icons.arrow_drop_down_outlined
                  : Icons.arrow_drop_up_outlined,
              color: maxPercentage < 0 ? pureRed : growthGreen,
            ),
          ],
        ),

        const SizedBox(height: 20),

        //
        Text(
          "Menor preço hoje",
          style: Theme.of(context).textTheme.bodySmall,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Text(
              min,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "${minPercentage.toStringAsFixed(2)}%",
              style: TextStyle(
                color: minPercentage > 0 ? growthGreen : pureRed,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              minPercentage > 0
                  ? Icons.arrow_drop_up_outlined
                  : Icons.arrow_drop_down_outlined,
              color: minPercentage > 0 ? growthGreen : pureRed,
            ),
          ],
        ),
      ],
    );
  }
}
