import 'package:coins/src/logic/bloc/coins_bloc.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        Divider,
        EdgeInsets,
        FloatingActionButton,
        Icon,
        Icons,
        MediaQuery,
        Padding,
        SafeArea,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Widget;
import 'package:provider/provider.dart';

import '../../../logic/models/coin.dart';
import '../../../utils/utils.dart' show backgroundColor;
import '../components/coins_builder.dart';
import '../components/continent_builder.dart';
import '../components/crypto_box_builder.dart';

class HomeView extends StatelessWidget {
  final List<Coin> coins;

  const HomeView({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
    final double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        // BG Color
        backgroundColor: backgroundColor,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: [
              // Crypto
              CryptoBoxBuilder(
                coins: coins.sublist(0, 3),
              ),

              //
              SizedBox(
                width: width * .95,
                child: const Divider(
                  thickness: .5,
                ),
              ),

              const ContinentBuilder(),

              // Currencies
              CoinsBuilder(
                data: coins
                    .where(
                      (element) =>
                          element.key != "BTC" &&
                          element.key != "ETH" &&
                          element.key != "XRP",
                    )
                    .toList(),
              ),
            ],
          ),
        ),

        //
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<CoinsBloc>().add(LoadAll()),
          child: const Icon(Icons.restart_alt),
        ),
      ),
    );
  }
}
