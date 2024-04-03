part of 'coins_bloc.dart';

@immutable
sealed class CoinsState {
  final List<Coin> coins;

  const CoinsState({required this.coins});
}

final class CoinsInitial extends CoinsState {
  const CoinsInitial({required super.coins});
}

final class CoinsLoaded extends CoinsState {
  const CoinsLoaded({required super.coins});
}

final class CoinsFiltered extends CoinsState {
  const CoinsFiltered({required super.coins});
}

final class CoinsConverter extends CoinsState {
  final (double, double) conversed;
  const CoinsConverter({required super.coins, required this.conversed});
}
