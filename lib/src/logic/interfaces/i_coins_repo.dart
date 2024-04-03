import '../models/coin.dart';

abstract interface class ICoinsRepo {
  Future<List<Coin>> load();
}
