import 'package:coins/src/app/global/components/max_min_badge.dart';
import 'package:coins/src/app/home/components/home_price_icon.dart';
import 'package:flutter/material.dart';

class HomePriceContent extends StatelessWidget {
  const HomePriceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Alignment
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        // Icon and name row
        const HomePriceIcon(),

        Row(
          children: [
            Text(
              "Dólar em Reais ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),

        Row(
          children: [
            const Text(
              "R\$ ",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "5,27 ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),

        Row(
          // Alignment
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                // MIN Badge
                const MaxMinBadge(isMax: true),

                const SizedBox(
                  height: 5,
                ),

                // MIN price
                Text(
                  "R\$ 5,27",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),

            const SizedBox(
              width: 15,
            ),

            // Min
            Column(
              children: [
                // MAX badge
                const MaxMinBadge(isMax: false),

                const SizedBox(
                  height: 5,
                ),

                // MAX price
                Text(
                  "R\$ 5,27",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
