import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/global/components/max_min_badge.dart';
import 'package:coins/src/app/global/components/app_icon_label.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class PriceBannerContent extends StatelessWidget {
  final CoinsBlocState state;
  const PriceBannerContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    // Coin
    final CoinsModel model = state.coinsList[0];

    return ListView(
      children: [
        // Icon and name row
        const AppIconLabel(),

        Row(
          children: [
            Text(
              "${model.name.split("/")[0]} em Reais ",
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
              double.tryParse(model.price)!.toStringAsFixed(2),
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
                // Max Badge
                const MaxMinBadge(isMax: true),

                const VerticalSpace(height: 5),

                // Max price
                Text(
                  double.tryParse(model.high)!.toStringAsFixed(2),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),

            const HorizontalSpace(width: 15),

            // MIN
            Column(
              children: [
                // Min badge
                const MaxMinBadge(isMax: false),

                const VerticalSpace(height: 5),

                // Min price
                Text(
                  double.tryParse(model.low)!.toStringAsFixed(2),
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
