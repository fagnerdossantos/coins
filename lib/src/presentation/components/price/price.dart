import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/utils/consts.dart';

class Price extends StatelessWidget {
  final int index;
  const Price({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controllers
    final CoinResponse controller = context.watch<APIController>().response;
    const enumList = EnumCoins.values;

    // Coin
    final String key = enumList[index].key;
    final CoinResponse coin = controller[key];
    final double price = double.parse(coin["ask"]);
    bool isCrypto = coin.values.contains("BTC") || coin.values.contains("ETH");

    return isCrypto
        ? Text(
            "R\$ ${price.toStringAsFixed(3)} Mil",
            style: priceStyle,
            textAlign: TextAlign.center,
          )
        : Text(
            "R\$ ${price.toStringAsFixed(2).replaceAll(".", ",")}",
            style: priceStyle,
          );
  }
}
