import '../models/coin.dart';
import '../../layout/home/components/continent_builder.dart';

abstract interface class ICoinsListViewModel {
  Future<List<Coin>> loadAll();
  Future<List<Coin>> filteredByName({required String name});
  Future<List<Coin>> filteredByContinent({required Continents continent});
  Future<List<Coin>> convert({required (Coin, Coin) coins});
}
