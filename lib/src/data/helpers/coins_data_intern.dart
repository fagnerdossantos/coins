import 'package:coins/src/data/helpers/coins_helper.dart';

import '../../configurations/types.dart';
import '../models/coin_helper_model.dart';

// ! Intern usage
/// Used to load JSON and populate coins as helpers in API calls,
/// normalizing coin models on initialization.
class CoinsDataIntern {
  CoinsDataIntern() {
    _loadCoins();
  }

  // DATA
  final List<CoinHelperModel> _coins = [];
  final List<String> _labels = [];
  final List<String> _keys = [];

  CoinDataRecord get data => (coins: _coins, labels: _labels, keys: _keys);

  Future<void> _loadCoins() async {
    //
    final Map<String, dynamic> json = internCoins;

    for (String label in json.keys) {
      _labels.add(label);
      for (String key in json[label].keys) {
        _keys.add(key);

        final Map<String, dynamic> currentMap = {
          "key": key,
          "continent": label,
          ...json[label][key],
        };

        _coins.add(CoinHelperModel.fromMap(currentMap));
      }
    }
  }
}
