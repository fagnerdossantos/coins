import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/helpers/continents_helper.dart';

class PriceRegionModel {
  // Properties
  late BuildContext _context;
  late Continents _continent;

  // Setters
  set context(BuildContext ctx) => _context = ctx;
  set continent(Continents continent) => _continent = continent;

  /// Return a CoinModel based in the given [index]
  CoinsModel coinModelGet({required int index}) {
    // Coin Controller
    final controller = _context.watch<CoinsStore>();

    switch (_continent) {
      case Continents.africa:
        return controller.africa[index];

      case Continents.america:
        return controller.america[index];

      case Continents.asia:
        return controller.asia[index];

      case Continents.europe:
        return controller.europe[index];

      case Continents.oceania:
        return controller.oceania[index];
    }
  }

  int continentListLength() {
    final controller = _context.read<CoinsStore>();

    switch (_continent) {
      case Continents.africa:
        return controller.africa.length;

      case Continents.america:
        return controller.america.length;

      case Continents.asia:
        return controller.asia.length;

      case Continents.europe:
        return controller.europe.length;

      case Continents.oceania:
        return controller.oceania.length;
    }
  }
}
