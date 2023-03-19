// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'coins_bloc.dart';

abstract class CoinsBlocState {
  List<CoinsModel> coinsList;
  CoinsBlocState({
    required this.coinsList,
  });
}

class CoinsBlocInitialState extends CoinsBlocState {
  CoinsBlocInitialState({required super.coinsList});
}

class CoinsBlocLoadState extends CoinsBlocState {
  CoinsBlocLoadState({required super.coinsList});
}

class CoinsBlocSuccessState extends CoinsBlocState {
  CoinsBlocSuccessState({required super.coinsList});
}

class CoinsFilterBlocState extends CoinsBlocState {
  CoinsFilterBlocState({required super.coinsList});
}
