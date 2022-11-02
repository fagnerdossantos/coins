import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:api_module/src/interfaces/coins_store_interface.dart';
import 'package:api_module/src/models/coins_model.dart';
import 'package:api_module/src/utils/enum_coins.dart';
import 'package:api_module/src/utils/types.dart';

class CoinsStore extends ChangeNotifier implements CoinsStoreInterface {
  final List<CoinsModel> _africa = [];
  List<CoinsModel> get africa => _africa;

  final List<CoinsModel> _america = [];
  List<CoinsModel> get america => _america;

  final List<CoinsModel> _asia = [];
  List<CoinsModel> get asia => _asia;

  final List<CoinsModel> _europe = [];
  List<CoinsModel> get europe => _europe;

  final List<CoinsModel> _oceania = [];
  List<CoinsModel> get oceania => _oceania;

  @override
  void add({required APIResponse map}) {
    // First set the coins region
    _findCoinContinent(map);

    // Clear the list every call
    _clearLists();

    for (var value in map.values) {
      String initial = value["initial"];

      // Coin
      final model = CoinsModel(
        key: value["code"],
        flag: value["image"],
        price: value["bid"],
      );
      print(model.flag);

      switch (initial) {
        case "AF":
          _africa.add(model);
          break;

        case "AM":
          _america.add(model);
          break;

        case "AS":
          _asia.add(model);
          break;

        case "EU":
          _europe.add(model);
          break;

        case "OC":
          _oceania.add(model);
          break;
      }
    }
    notifyListeners();
  }

  void _findCoinContinent(APIResponse map) {
    for (var iterable in continentsList) {
      for (var value in iterable) {
        final String initial = value.continent;
        final String key = value.label.replaceAll("-", "").replaceAll(",", "");
        final coin = map[key];
        coin["initial"] = initial;
        coin["image"] = value.image;
        //coin["image"] = "assets/images/us.png";

      }
    }
  }

  void _clearLists() {
    if (_africa.isNotEmpty) _africa.clear();
    if (_america.isNotEmpty) america.clear();
    if (_asia.isNotEmpty) _asia.clear();
    if (_europe.isNotEmpty) _europe.clear();
    if (_oceania.isNotEmpty) _oceania.clear();
  }
}
