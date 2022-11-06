import 'package:flutter/material.dart';

import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/helpers/pages_helper.dart';
import 'package:coins/src/layout/components/buttons/reload_button.dart';
import 'package:coins/src/layout/components/labels/labels.dart';
import 'package:coins/src/layout/components/labels/region_label.dart';
import 'package:coins/src/layout/components/price/price_box_builder.dart';
import 'package:coins/utils/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    // Regions List (Label, enum)
    const List<dynamic> regionList = [
      ["América", Continents.america],
      ["Europa", Continents.europe],
      ["Oceania", Continents.oceania],
      ["Ásia", Continents.asia],
      ["ÁFRICA", Continents.africa],
    ];

    return Scaffold(
      // BackGround color
      backgroundColor: deepPurple,

      // App Bar
      appBar: AppBar(
        title: const Text(
          "Cotação de Moedas",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: deepPurple,
      ),

      // App Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Home Label
          const Expanded(
            child: Labels(
              color: white,
              fontSize: 16,
              text: "Principais moedas de cada continente",
            ),
          ),

          // Home Content
          ClipRRect(
            // Shape
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),

            child: Container(
              // Size
              height: height * .8,
              width: width,
              padding: const EdgeInsets.only(left: 5),

              // Color
              color: white,

              child: ListView(
                children: [
                  for (var list in regionList) ...[
                    // Region
                    RegionLabel(label: list[0]),

                    // Price
                    PriceBoxBuilder(
                      size: size,
                      continent: list[1],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                  ]
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: const ReloadButton(
        page: Pages.home,
      ),
    );
  }
}
