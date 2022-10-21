import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:coins/src/presentation/components/button/reload_button.dart';
import 'package:coins/src/presentation/components/image/flag_image.dart';
import 'package:coins/src/presentation/components/layout/coins_builder.dart';
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
    final double width = size.width;

    // Controllers
    final controller = context.read<APIController>().response;
    const enumList = EnumCoins.values;

    return Scaffold(
      // BackGround color
      backgroundColor: Colors.deepPurple,
      // App Bar
      appBar: AppBar(
        title: const Text(
          "Cotação",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),

      // App Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Label
          const Expanded(
            child: Text(
              "Principais moedas do mercado",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),

          // Content
          SizedBox(
            height: height * .8,
            width: width,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                // Color
                color: Colors.white,

                // Shape
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),

              //
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row 1
                    const Text(
                      "Moedas",
                      style: TextStyle(
                        fontSize: 25,
                        color: blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      // Size
                      height: 180,
                      width: width,

                      child: const CoinsBuilder(),
                    ),

                    SizedBox(
                      height: height * .1,
                    ),

                    // Row 1
                    const Text(
                      "Criptomoedas",
                      style: TextStyle(
                        fontSize: 25,
                        color: blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      // Size
                      height: 180,
                      width: width,

                      child: const CoinsBuilder(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: const ReloadButton(
        page: EnumPages.homePage,
      ),
    );
  }
}
