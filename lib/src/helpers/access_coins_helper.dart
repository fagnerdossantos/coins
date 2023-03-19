import 'package:coins/src/api/controllers/api_cache_controller.dart';
import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/helpers/coins_helper.dart';
import 'package:coins/utils/consts.dart';

class AccessCoinsHelper {
  // Get a List of Coins model filtered by a Continent
  List<CoinsModel> filteredCountryList({required Continents continent}) {
    List<CoinsModel> coins = addCoinInfoHelper(coinMap: APICacheController.cache);
    return coins
        .where((model) => model.initials.contains(continent.initials))
        .toList();
  }

  // Adding flag and a key inside the map
  List<CoinsModel> addCoinInfoHelper({required APIResponse coinMap}) {
    List<CoinsModel> coins = [];

    for (var continent in Continents.values) {
      for (var country in getCountriesByContinent(continent)) {
        final String key = country[0].replaceAll('-', '').replaceAll(',', '');
        final String image = country[2];

        coinMap[key]['key'] = key;
        coinMap[key]['flag'] = image;
        coinMap[key]['initials'] = continent.initials;

        coins.add(CoinsModel.fromMap(coinMap[key]));
      }
    }
    return coins;
  }
}
