import 'package:flutter/material.dart';

import 'package:coins/src/presentation/components/price/price.dart';
import 'package:coins/utils/consts.dart';

class PriceBox extends StatelessWidget {
  final Size size;
  final int index;
  const PriceBox({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Size
      height: size.height * .1,
      width: size.width * .9,

      child: DecoratedBox(
        decoration: BoxDecoration(
          // Color
          color: blueGrey,

          // Shape
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Price(index: index),
        ),
      ),
    );
  }
}
