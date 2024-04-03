import '../../layout/home/components/continent_builder.dart';
import '../models/coin.dart';
import '../interfaces/i_coins_repo.dart';
import '../interfaces/i_coins_list_viewmodel.dart';

class CoinListViewModel implements ICoinsListViewModel {
  // Dependencies
  final ICoinsRepo _repository;
  const CoinListViewModel(this._repository);

  // Helper
  Future<Coin> _filter(Coin coin) async =>
      (await _repository.load()).where((element) => element == coin).first;

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
      return await _repository.load();
    }
 
    // Load all coins
    final List<Coin> data = await _repository.load();
    List<Coin> coins = [];

    for (String element in ["Criptomoedas", continent.name]) {
      coins.addAll(data.where((e) => e.continent.contains(element)).toList());
    }

    return coins;
  }

  @override
  Future<List<Coin>> filteredByName({required String name}) async {
    return (await _repository.load())
        .where(
          (element) => element.name.toLowerCase().contains(
                name.toLowerCase(),
              ),
        )
        .toList();
  }

  @override
  Future<List<Coin>> loadAll() async => await _repository.load();
}
