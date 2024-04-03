import 'package:flutter/material.dart'
    show
        BuildContext,
        Expanded,
        InkWell,
        ListView,
        Navigator,
        StatelessWidget,
        Widget;

import '../../../logic/models/coin.dart';
import '../../global/components/price/coin_row.dart';

class CoinsBuilder extends StatelessWidget {
  final List<Coin> data;

  const CoinsBuilder({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (_, index) {
          // Model
          final model = data[index];

          return InkWell(
            onTap: () =>
                Navigator.pushNamed(context, "/about", arguments: model),
            child: CoinRow(data: model),
          );
        },
      ),
    );
  }
}
