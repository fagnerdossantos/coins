import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/price/components/flag_coin_image.dart';
import 'package:coins/src/app/price/components/price_box.dart';
import 'package:flutter/material.dart';

class PriceBuilder extends StatelessWidget {
  final Size size;
  final CoinsBlocState state;

  const PriceBuilder({super.key, required this.size, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //
      itemCount: state.coinsList.length,
      scrollDirection: Axis.vertical,

      itemBuilder: (_, index) {
        // Final model
        final CoinsModel model = state.coinsList[index];

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // County flag
            FlagImage(
              path: model.flag,
            ),

            // Price
            PriceBox(
              model: model,
            ),
          ],
        );
      },
    );
  }
}
