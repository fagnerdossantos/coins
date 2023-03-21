import 'package:coins/src/api/controllers/api_cache_controller.dart';
import 'package:coins/src/helpers/access_coins_helper.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coins/src/api/interfaces/api_interfaces.dart';
import 'package:coins/src/api/models/coins_model.dart';
import 'package:coins/src/helpers/coins_helper.dart';

part 'coins_bloc_event.dart';
part 'coins_bloc_state.dart';

class CoinsBloc extends Bloc<CoinsBlocEvent, CoinsBlocState> {
  // Controller of API
  final APIControllerInterface _controller;
  final _helper = AccessCoinsHelper();

  CoinsBloc(this._controller) : super(CoinsInitialState(coinsList: [])) {
    on<FetchCoinEvent>((event, emit) async {
      // Loading
      emit(CoinsLoadState(coinsList: []));

      final APIResponse data = await _controller.fetch();

      // Caching
      APICacheController.setCache = data;

      emit(CoinsSuccessState(
          coinsList: _helper.addCoinInfoHelper(coinMap: data)));
    });

    // Used to show all coins when it is stored in cache
    on<AllCoinsEvent>((event, emit) {
      // Getting teh cache
      final APIResponse cache = APICacheController.cache;

      emit(CoinsSuccessState(
          coinsList: _helper.addCoinInfoHelper(coinMap: cache)));
    });

    on<FilterCoinEvent>((event, emit) {
      emit(CoinsFilteredState(
          coinsList: _helper.filteredCountryList(continent: event.continent)));
    });
  }
}
