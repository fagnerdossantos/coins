import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/api/controllers/api_controller.dart';
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
    final controller = context.watch<APIController>().response;
    const enumList = EnumCoins.values;

    // Coin
    final String key = enumList[index].key;
    final CoinResponse coin = controller[key];

    return Text(
      "Valor R\$: ${coin["ask"]}",
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }
}
