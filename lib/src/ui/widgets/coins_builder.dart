import 'package:flutter/material.dart'
    show BuildContext, InkWell, ListView, StatelessWidget, Widget;
import 'package:go_router/go_router.dart';

import '../../data/models/coin.dart';
import '../components/coin_row.dart';

class CoinsBuilder extends StatelessWidget {
  final List<Coin> data;

  const CoinsBuilder({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    //

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, index) {
        // Model
        final model = data[index];

        return InkWell(
          onTap: () => context.push("/about", extra: model),
          child: CoinRow(data: model),
        );
      },
    );
  }
}
