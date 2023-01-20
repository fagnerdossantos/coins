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
    final size = MediaQuery.of(context).size;
    final regionList = [
      Region("América", Continents.america),
      Region("Europa", Continents.europe),
      Region("Oceania", Continents.oceania),
      Region("Ásia", Continents.asia),
      Region("ÁFRICA", Continents.africa),
    ];

    return PagesModel(
      size: size,
      appBar: appBarBuilder(
        title: "Cotação de Moedas",
        color: deepPurple,
      ),
      floatingActionButton: const ReloadButton(page: Pages.home),
      label: "Principais moedas de cada continente",
      child: ListView(
        children: [
          for (var region in regionList) ...[
            RegionLabel(label: region.name),
            PriceBoxBuilder(
              size: size,
              continent: region.continent,
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

class Region {
  final String name;
  final Continents continent;
  Region(this.name, this.continent);
}
