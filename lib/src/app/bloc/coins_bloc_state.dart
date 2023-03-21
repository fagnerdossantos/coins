// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'coins_bloc.dart';

abstract class CoinsBlocState {
  List<CoinsModel> coinsList;
  CoinsBlocState({
    required this.coinsList,
  });
}

class CoinsInitialState extends CoinsBlocState {
  CoinsInitialState({required super.coinsList});
}

class CoinsLoadState extends CoinsBlocState {
  CoinsLoadState({required super.coinsList});
}

class CoinsSuccessState extends CoinsBlocState {
  CoinsSuccessState({required super.coinsList});
}

class CoinsFilteredState extends CoinsBlocState {
  CoinsFilteredState({required super.coinsList});
}
