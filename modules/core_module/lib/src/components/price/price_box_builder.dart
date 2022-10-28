import 'package:core_module/src/components/price/price_box.dart';
import 'package:flutter/material.dart';

class PriceBoxBuilder extends StatelessWidget {
  final Size size;
  const PriceBoxBuilder({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Size
      height: 160,
      //width: size.width,

      child: ListView.builder(
        // Direction
        scrollDirection: Axis.horizontal,

        // Builder
        itemBuilder: (_, index) {
          return PriceBox(
            index: index,
            size: size,
          );
        },
      ),
    );
  }
}
