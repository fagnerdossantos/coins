import 'package:flutter/material.dart'
    show BuildContext, Row, StatelessWidget, Theme, Widget;

import 'package:flutter/widgets.dart';

import '../../../../logic/models/coin.dart';
import '../../../../utils/utils.dart' show HorizontalSpace;
import 'arrow_price_indicator.dart';

class CoinInitials extends StatelessWidget {
  final Coin model;
  const CoinInitials({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Initials
        Text(
          model.key.replaceAll("BRL", ""),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 19),
        ),

        //
        const HorizontalSpace(
          width: 10,
        ),

        ArrowPriceIndicator(
          current: model.price,
          min: model.low,
          max: model.high,
        ),
      ],
    );
  }
}
