import 'package:flutter/material.dart';

import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/price/price_box.dart';
import 'package:coins/src/logic/models/price_region_model.dart';

class PriceBoxBuilder extends StatelessWidget {
  final Continents continent;
  final Size size;
  const PriceBoxBuilder(
      {super.key, required this.size, required this.continent});

  @override
  Widget build(BuildContext context) {
    // Verify Length
    final regionModel = PriceRegionModel()
      ..context = context
      ..continent = continent;

    final int len = regionModel.continentListLength();

    return SizedBox(
      // Size
      height: 160,
      //width: size.width,

      child: ListView.builder(
        // Direction
        scrollDirection: Axis.horizontal,

        // Builder
        itemCount: len,
        itemBuilder: (_, index) {
          return GestureDetector(
            // Action
            onTap: () {
              final List data = [index, continent];
              Navigator.pushNamed(context, "/coindetail", arguments: data);
            },

            // Content
            child: PriceBox(
              continent: continent,
              index: index,
              size: size,
            ),
          );
        },
      ),
    );
  }
}
