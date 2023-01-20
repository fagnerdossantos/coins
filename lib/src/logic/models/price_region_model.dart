// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/helpers/continents_helper.dart';

class PriceRegionModel {
  // Properties
  final BuildContext context;
  final Continents continent;

  PriceRegionModel({
    required this.context,
    required this.continent,
  });

  /// Return a CoinModel based in the given [index]
  CoinsModel coinModelGet({required int index}) {
    // Coin Controller
    final controller = context.watch<CoinsStore>();

    switch (continent) {
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
    final controller = context.read<CoinsStore>();

    switch (continent) {
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
