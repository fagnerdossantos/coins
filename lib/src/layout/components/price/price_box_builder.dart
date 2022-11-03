import 'package:coins/src/api/helpers/continents_helper.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/layout/components/price/price_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  if (continent == Continents.africa) {
    return controller.africa.length;
  } else if (continent == Continents.america) {
    return controller.america.length;
  } else if (continent == Continents.asia) {
    return controller.asia.length;
  } else if (continent == Continents.europe) {
    return controller.europe.length;
  } else {
    return controller.oceania.length;
  }
}
