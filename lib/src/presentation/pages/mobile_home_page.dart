import 'package:flutter/material.dart';

import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:coins/src/presentation/components/button/reload_button.dart';
import 'package:coins/src/presentation/components/layout/coins_builder.dart';
import 'package:coins/src/presentation/components/layout/label.dart';
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
    // final controller = context.read<APIController>().response;
    // Enum coins length

    return Scaffold(
      // BackGround color
      backgroundColor: deepPurple,

      // App Bar
      appBar: AppBar(
        title: const Text(
          "Cotação",
          style: textAppBarStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: deepPurple,
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
                color: white,
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
                color: white,

                // Shape
                borderRadius: radiusHome,
              ),

              //
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row fiat
                    const Label(text: "Moedas", color: blueGrey),
                    SizedBox(
                      // Size
                      height: 180,
                      width: width,

                      child: const CoinsBuilder(
                        fiatOrCrypto: FiatOrCrypto.fiat,
                      ),
                    ),

                    SizedBox(
                      height: height * .1,
                    ),

                    // Row Crypto
                    const Label(text: "Criptomoedas", color: blueGrey),
                    SizedBox(
                      // Size
                      height: 180,
                      width: width,

                      child: const CoinsBuilder(
                        fiatOrCrypto: FiatOrCrypto.cripto,
                      ),
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
