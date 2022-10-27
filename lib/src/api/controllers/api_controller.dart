import 'package:flutter/widgets.dart';

import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/utils/consts.dart';

abstract class APIController {}

class APIControllerImp extends ChangeNotifier {
  // Dependencie
  final APIModel _model;
  APIControllerImp(this._model);

  CoinResponse response = {};

  Future<void> fetch() async {
    String coins = "";

    for (EnumCoins element in EnumCoins.values) {
      coins += element.label;
    }

    response = await _model.fetch(coins);
    notifyListeners();
  }
}
