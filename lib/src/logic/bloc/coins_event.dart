part of 'coins_bloc.dart';

@immutable
sealed class CoinsEvent {}

final class LoadAll extends CoinsEvent {}

final class CoinByName extends CoinsEvent {
  final String name;

  CoinByName({required this.name});
}

final class CoinByContinent extends CoinsEvent {
  final Continents continent;

  CoinByContinent({required this.continent});
}

final class CoinConvert extends CoinsEvent {
  final (Coin, Coin) coins;

  CoinConvert({required this.coins});
}
