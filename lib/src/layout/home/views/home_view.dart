import 'package:coins/src/logic/bloc/coins_bloc.dart';
import 'package:coins/src/providers/app_provider.dart';
import 'package:flutter/material.dart';

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

              Container(
                // Sizing
                height: 50,
                width: width,

                padding: const EdgeInsets.only(left: 8),
                margin: const EdgeInsets.all(2),

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: TextField(
                  minLines: 1,
                  cursorHeight: 15,
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: "search by name",
                  ),
                  onChanged: (name) =>
                      getIt<CoinsBloc>().add(CoinByName(name: name)),
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
          onPressed: () => getIt<CoinsBloc>().add(LoadAll()),
          child: const Icon(Icons.restart_alt),
        ),
      ),
    );
  }
}
