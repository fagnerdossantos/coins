import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:coins/src/presentation/components/button/reload_button.dart';
import 'package:coins/src/presentation/components/image/flag_image.dart';
import 'package:coins/src/presentation/components/price/coin_label.dart';
import 'package:coins/src/presentation/components/price/max_price.dart';
import 'package:coins/src/presentation/components/price/min_price.dart';
import 'package:coins/src/presentation/components/price/price_box.dart';
import 'package:coins/utils/consts.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;

    // Controllers
    final controller = context.read<APIController>().response;
    const enumList = EnumCoins.values;

    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: const Text("Cotação"),
        centerTitle: true,
        backgroundColor: blueGrey,
      ),

      // App Body
      body: ListView.builder(
        itemCount: controller.length,
        itemBuilder: ((context, index) {
          // Coin
          final String key = enumList[index].key;
          final CoinResponse coin = controller[key];

          // Coin data
          String coinLabel = coin["name"];
          String initials = coin["code"];
          String image = enumList[index].img;

          return SizedBox(
            // Size
            height: height,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Label
                CoinLabel(label: coinLabel),

                // Flag
                FlagImage(
                  initials: initials,
                  image: image,
                ),

                // MAX

                MaxMinPrice(index: index),

                // MIN
                MinPrice(index: index),

                PriceBox(size: size, index: index),
              ],
            ),
          );
        }),
      ),

      floatingActionButton: const ReloadButton(
        page: EnumPages.homePage,
      ),
    );
  }
}
