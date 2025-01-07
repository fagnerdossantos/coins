import 'dart:developer' show log;

import 'package:flutter/widgets.dart' show ChangeNotifier;

import '../../data/datasources/coins_cache.dart';
import '../../data/models/coin.dart';
import '../../data/repositories/coins_repository.dart';

class CoinsViewmodel extends ChangeNotifier {
  //

  late final CoinsCache _cache;
  late final CoinsRepository _repository;

  CoinsViewmodel({
    required CoinsCache cache,
    required CoinsRepository repository,
  }) {
    _cache = cache;
    _repository = repository;
  }

  List<Coin> _coins = [];
  List<Coin> get coins => List.unmodifiable(_coins);

  Future<void> loadCoins() async {
    log("Repo load called");
    // Set a minimum delay time to show load animation
    final delay = Future.delayed(Duration(seconds: 2));

    await Future.wait([delay, _repository.load()]);

    // await _repository.load();
    _coins = _cache.coins;

    notifyListeners();
  }
}
