import 'package:api_module/api_module.dart';
import 'package:core_module/src/components/price/price_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceBoxBuilder extends StatelessWidget {
  final Continent continent;
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

int _verifylenth(BuildContext context, Continent continent) {
  final controller = context.read<CoinsStore>();

  if (continent == Continent.africa) {
    return controller.africa.length;
  } else if (continent == Continent.america) {
    return controller.america.length;
  } else if (continent == Continent.asia) {
    return controller.asia.length;
  } else if (continent == Continent.europe) {
    return controller.europe.length;
  } else {
    return controller.oceania.length;
  }
}
