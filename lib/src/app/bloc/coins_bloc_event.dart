part of 'coins_bloc.dart';

abstract class CoinsBlocEvent {}

class FetchCoinEvent extends CoinsBlocEvent {}

class AllCoinsEvent extends CoinsBlocEvent {}

class FilterCoinEvent extends CoinsBlocEvent {
  final Continents continent;

  FilterCoinEvent({required this.continent});
}
