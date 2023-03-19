import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/price/components/flag_coin_image.dart';
import 'package:coins/src/app/price/components/price_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceBuilder extends StatelessWidget {
  final Size size;
  const PriceBuilder({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinsBloc, CoinsBlocState>(
      builder: (_, state) {
        // All Coins List
        if (state is CoinsBlocSuccessState) {
          // Box to place content
          return AllPriceBoxes(
            size: size,
            modelList: state.coinsList,
          );
        } else if (state is CoinsFilterBlocState) {
          return AllPriceBoxes(
            size: size,
            modelList: state.coinsList,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class AllPriceBoxes extends StatelessWidget {
  final Size size;
  final List<CoinsModel> modelList;

  const AllPriceBoxes({super.key, required this.size, required this.modelList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //
      itemCount: modelList.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (_, index) {
        // Final model
        final CoinsModel model = modelList[index];

        return Stack(
          children: [
            // Price
            PriceBox(
              model: model,
            ),

            // County flag
            FlagCoinImage(
              image: model.flag,
            ),
          ],
        );
      },
    );
  }
}
