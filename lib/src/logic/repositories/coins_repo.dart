import '../../utils/types.dart';
import '../api/interfaces/i_api_controller.dart';
import '../intern_usage/intern_coins.dart';
import '../models/coin.dart';
import '../interfaces/i_coins_repo.dart';

class CoinsRepo implements ICoinsRepo {
  // Dependencies injection
  final IApiController _controller;
  CoinsRepo(this._controller);

  final List<Coin> _coins = [];
  List<Coin> get coins => _coins;

  @override
  Future<List<Coin>> load() async {
    // Verify if [_coins] is already populated
    if (_coins.isNotEmpty) _coins.clear();

    final APIResponse data = await _controller.fetch();
    final APIResponse coinsIn = InternCoins.coins;

    // Extract the keys
    final keys = _extractKeys(data);

    for (String continent in coinsIn.keys) {
      final Map<String, dynamic> continentData = coinsIn[continent];

      for (String key in keys) {
        if (continentData.containsKey(key)) {
          final coinData = data["${key}BRL"];

          _coins.add(
            Coin.fromMap(
              {
                "key": key,
                "name": coinData["name"],
                "continent": continent,
                "imagePath": continentData[key],
                "price": coinData["bid"],
                "low": coinData["low"],
                "high": coinData["high"]
              },
            ),
          );
        }
      }
    }

    return _coins;
  }

  List<String> _extractKeys(APIResponse data) {
    return data.keys.map((e) => e.replaceAll("BRL", "")).toList();
  }
}
