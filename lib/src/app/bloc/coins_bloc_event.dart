part of 'coins_bloc.dart';

abstract class CoinsBlocEvent {}

class FetchCoinPriceEvent extends CoinsBlocEvent {}

class FilterCoinPriceEvent extends CoinsBlocEvent {
  final Continents continent;

  FilterCoinPriceEvent(this.continent);
}
