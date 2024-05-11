import 'package:coins/src/logic/repositories/coins_cache.dart';

import '../../layout/home/components/continent_builder.dart';
import '../models/coin.dart';
import '../interfaces/i_coins_repo.dart';
import '../interfaces/i_coins_list_viewmodel.dart';

class CoinListViewModel implements ICoinsListViewModel {
  // Dependencies
  final ICoinsRepo _repository;
  final CoinsCache _cache;
  const CoinListViewModel(this._repository, this._cache);

  // Helper
  Future<Coin> _filter(Coin coin) async => (await loadAll(fromCache: true))
      .where((element) => element == coin)
      .first;

  @override
  Future<List<Coin>> convert({required (Coin, Coin) coins}) async {
    return [
      await _filter(coins.$1),
      await _filter(coins.$2),
    ];
  }

  @override
  Future<List<Coin>> filteredByContinent(
      {required Continents continent}) async {
    //
    if (continent == Continents.all) {
      return await loadAll(fromCache: true);
    }

    // Load all coins
    final List<Coin> data = await loadAll(fromCache: true);
    List<Coin> coins = [];

    for (String element in ["Criptomoedas", continent.name]) {
      coins.addAll(data.where((e) => e.continent.contains(element)).toList());
    }

    return coins;
  }

  @override
  Future<List<Coin>> filteredByName({required String name}) async {
    return (await loadAll(fromCache: true))
        .where(
          (element) => element.name
              .toLowerCase()
              .replaceAll("ê", "e")
              .replaceAll("ó", "o")
              .replaceAll("ú", "u")
              .contains(
                name.toLowerCase(),
              ),
        )
        .toList();
  }

  @override
  Future<List<Coin>> loadAll({required bool fromCache}) async {
    if (!fromCache) {
      //
      _cache.setCache = await _repository.load();

      return await Future.value(_cache.cache);
    }

    return await Future.value(_cache.cache);
  }
}
