import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/utils/consts.dart';

class MaxMinPrice extends StatelessWidget {
  final int index;
  const MaxMinPrice({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controllers
    final controller = context.watch<APIController>().response;
    const enumList = EnumCoins.values;

    // Coin
    final String key = enumList[index].key;
    final CoinResponse coin = controller[key];

    return Row(
      children: [
        // Give Some Space
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),

        Expanded(
          flex: 1,
          child: Text(
            "Máxima",
            style: defaultStyle,
          ),
        ),

        Expanded(
          flex: 1,
          child: Text(
            coin["high"],
            style: const TextStyle(
              fontSize: 22,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
