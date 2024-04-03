import 'package:flutter/material.dart'
    show BuildContext, Icon, Icons, StatelessWidget, Widget;

import '../../../../logic/controllers/currency_converter.dart';
import '../../../../utils/utils.dart' show red, green;

class ArrowPriceIndicator extends StatelessWidget {
  final double current, min, max;
  final double? size;
  const ArrowPriceIndicator({
    super.key,
    required this.current,
    required this.min,
    required this.max,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    // Difference calculus
    // MAX
    final int maxPct = CurrencyConverter.percent(
      value: current,
      reference: max,
    );

    // MIN
    final int minPct = CurrencyConverter.percent(
      value: current,
      reference: min,
    );

    return (maxPct.abs() > minPct.abs())
        ? Icon(
            Icons.arrow_downward,
            color: red,
            size: size ?? 15,
          )
        : Icon(
            Icons.arrow_upward,
            color: green,
            size: size ?? 15,
          );
  }
}
