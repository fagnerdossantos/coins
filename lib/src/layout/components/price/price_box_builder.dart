import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/price/price_box.dart';

class PriceBoxBuilder extends StatelessWidget {
  final Continents continent;
  final Size size;
  const PriceBoxBuilder(
      {super.key, required this.size, required this.continent});

  @override
  Widget build(BuildContext context) {
    // Verify Length
    final int len = _verifylenth(context, continent);

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
          return PriceBox(
            continent: continent,
            index: index,
            size: size,
          );
        },
      ),
    );
  }
}

int _verifylenth(BuildContext context, Continents continent) {
  final controller = context.read<CoinsStore>();

  switch (continent) {
    case Continents.africa:
      return controller.africa.length;

    case Continents.america:
      return controller.america.length;

    case Continents.asia:
      return controller.asia.length;

    case Continents.europe:
      return controller.europe.length;

    case Continents.oceania:
      return controller.oceania.length;
  }
}
