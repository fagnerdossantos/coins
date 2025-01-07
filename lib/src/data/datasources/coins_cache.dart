import 'package:flutter/widgets.dart' show ChangeNotifier;

import '../models/coin.dart';

class CoinsCache extends ChangeNotifier {
  //
  final List<Coin> _coins = [];

  // Getter and Setter
  List<Coin> get coins => List.unmodifiable(_coins);

  set setCoins(List<Coin> data) {
    if (!isCacheEmpty) _coins.clear();

    _coins.addAll(data);
    notifyListeners();
  }

  // States
  bool get isCacheEmpty => _coins.isEmpty;
}
