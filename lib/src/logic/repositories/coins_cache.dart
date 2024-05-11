import 'package:coins/src/logic/models/coin.dart';

class CoinsCache {
  List<Coin> _coins = [];

  set setCache(List<Coin> data) {
    _coins = data;
  }

  List<Coin> get cache => _coins;
}
