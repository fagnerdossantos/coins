import '../../utils/types.dart';
import 'coins_in.dart';

class CoinsModelIn {
  // When construct the class
  CoinsModelIn({required APIResponse jsonMap}) {
    // SETTING JsonMap value
    _jsonMap = jsonMap;

    loadCoins();
  }

  // Coins
  static final List<CoinsIn> _coins = [];
  List<CoinsIn> get coinsIn => _coins;
  void clear() => _coins.clear();

  // Come from outside -- By Constructor --
  APIResponse? _jsonMap;

  /// Get (Continent, Key, Coin Name) from json
  void loadCoins() {
    //

    for (String continent in _jsonMap!.keys) {
      _jsonMap![continent].forEach(
        (key, value) => _coins.add(
          CoinsIn(
            key: key,
            name: value,
            continent: continent,
            parameter: "$key-BRL",
          ),
        ),
      );
    }
  }
}
