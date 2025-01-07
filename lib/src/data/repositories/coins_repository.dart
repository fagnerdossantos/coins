import '../../configurations/types.dart';
import '../../contracts/coins_client_interface.dart';
import '../datasources/coins_cache.dart';
import '../helpers/coins_data_intern.dart';
import '../models/coin.dart';
import '../models/coin_helper_model.dart';

class CoinsRepository {
  //
  final CoinsClientInterface _coinsClient;
  final CoinsDataIntern _helper;
  final CoinsCache _cache;

  const CoinsRepository({
    required CoinsClientInterface coinsClient,
    required CoinsDataIntern helper,
    required CoinsCache cache,
  })  : _coinsClient = coinsClient,
        _helper = helper,
        _cache = cache;

  Future<void> load() async {
    final targetCoins = _helper.data.keys.join(",");

    final Map<String, dynamic> response = await _coinsClient.fetch(
      coinsTarget: targetCoins,
    );

    final List<Coin> coins = _mapToObject(response, _helper.data);

    _cache.setCoins = coins;
  }

  List<Coin> _mapToObject(Map<String, dynamic> map, CoinDataRecord intern) {
    //
    final List<Coin> coinsList = [];

    for (String continent in intern.labels) {
      //
      final List<CoinHelperModel> coinByContinent = intern.coins
          .where((element) => element.continent == continent)
          .toList();

      for (String key in intern.keys) {
        final coinData = map["${key}BRL"];

        CoinHelperModel? coin;

        for (CoinHelperModel element in coinByContinent) {
          if (element.key == key) {
            coin = element;
            break;
          }
        }

        if (coin != null) {
          final Map<String, dynamic> data = {
            "key": key,
            "name": coin.name,
            "continent": continent,
            "imagePath": coin.image,
            "price": coinData["bid"],
            "low": coinData["low"],
            "high": coinData["high"],
            "pctChange": coinData["pctChange"],
          };

          coinsList.add(
            Coin.fromMap(data),
          );
        }
      }
    }

    return coinsList;
  }
}
