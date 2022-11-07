import 'package:flutter/material.dart';

import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/helpers/pages_helper.dart';
import 'package:coins/src/layout/components/buttons/reload_button.dart';
import 'package:coins/src/layout/components/global/appbar_builder.dart';
import 'package:coins/src/layout/components/labels/region_label.dart';
import 'package:coins/src/layout/components/price/price_box_builder.dart';
import 'package:coins/src/logic/models/pages_model.dart';
import 'package:coins/utils/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size size = MediaQuery.of(context).size;

    // Regions List (Label, enum)
    const List<dynamic> regionList = [
      ["América", Continents.america],
      ["Europa", Continents.europe],
      ["Oceania", Continents.oceania],
      ["Ásia", Continents.asia],
      ["ÁFRICA", Continents.africa],
    ];

    return PagesModel(
      size: size,

      // AppBar
      appBar: appBarBuilder(
        title: "Cotação de Moedas",
        color: deepPurple,
      ),

      floatingActionButton: const ReloadButton(page: Pages.home),

      // Screen Label
      label: "Principais moedas de cada continente",

      // Body
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
    );
  }
}
