import 'package:flutter/widgets.dart';

import 'package:api_module/src/interfaces/coins_store_interface.dart';
import 'package:api_module/src/models/coins_model.dart';
import 'package:api_module/src/utils/enum_coins.dart';
import 'package:api_module/src/utils/types.dart';

class CoinsStore extends ChangeNotifier implements CoinsStoreInterface {
  final List<CoinsModel> _coins = [];
  List<CoinsModel> get coins => _coins;

  @override
  void add({required APIResponse map}) {
    // Clear the list every call
    if (_coins.isNotEmpty) _coins.clear();
    int index = 0;

    for (var value in map.values) {
      // Coin
      final model = CoinsModel(
        key: value["code"],
        flag: EnumCoins.values[index].img,
        price: value["bid"],
      );

      _coins.add(model);
      index++;
    }

    notifyListeners();
  }
}
