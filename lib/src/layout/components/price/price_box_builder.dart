import 'package:flutter/material.dart';

import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/price/price_box.dart';
import 'package:coins/src/logic/models/price_region_model.dart';

class PriceBoxBuilder extends StatelessWidget {
  final Continents continent;
  final Size size;
  const PriceBoxBuilder({
    Key? key,
    required this.size,
    required this.continent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final regionModel = PriceRegionModel(
      context: context,
      continent: continent,
    );

    final int len = regionModel.continentListLength();

    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: len,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              final data = [index, continent];
              Navigator.pushNamed(context, "/coindetail", arguments: data);
            },
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
