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

  CoinsBloc(this._controller) : super(CoinsBlocInitialState(coinsList: [])) {
    on<FetchCoinPriceEvent>((event, emit) async {
      // Loading
      emit(CoinsBlocLoadState(coinsList: []));

      final APIResponse data = await _controller.fetch();

      // Caching
      APICacheController.setCache = data;

      emit(CoinsBlocSuccessState(
          coinsList: _helper.addCoinInfoHelper(coinMap: data)));
    });

    on<FilterCoinPriceEvent>((event, emit) {

      emit(CoinsFilterBlocState(
          coinsList: _helper.filteredCountryList(continent: event.continent)));
    });
  }
}
