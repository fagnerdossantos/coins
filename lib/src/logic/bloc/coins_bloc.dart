import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coins/src/logic/controllers/currency_converter.dart';
import 'package:coins/src/logic/interfaces/i_coins_list_viewmodel.dart';
import 'package:coins/src/layout/home/components/continent_builder.dart';
import 'package:coins/src/logic/models/coin.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'coins_event.dart';
part 'coins_state.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  // Data
  final ICoinsListViewModel _data;

  CoinsBloc(this._data) : super(const CoinsInitial(coins: [])) {
    // LOAD
    on<LoadAll>((event, emit) async {
      emit(const CoinsLoading(coins: []));

      await Future.delayed(const Duration(milliseconds: 500));
      final List<Coin> loaded = await _data.loadAll(fromCache: false);

      emit(CoinsLoaded(coins: loaded));
    });

    // CONTINENT
    on<CoinByContinent>(
      (event, emit) async {
        emit(
          CoinsFiltered(
            coins: await _data.filteredByContinent(continent: event.continent),
          ),
        );
      },
    );

    // NAME
    on<CoinByName>(
      (event, emit) async {
        // Filtering
        final List<Coin> crypto = (await _data.loadAll(fromCache: true))
            .where(
              (element) =>
                  element.key == "BTC" ||
                  element.key == "ETH" ||
                  element.key == "XRP",
            )
            .toList();

        final List<Coin> coinsByName =
            await _data.filteredByName(name: event.name);

        final List<Coin> filtered = [...crypto, ...coinsByName];

        if (event.name.isEmpty) {
          emit(CoinsLoaded(coins: await _data.loadAll(fromCache: true)));
        } else {
          emit(
            CoinsFiltered(coins: filtered),
          );
        }
      },
    );

    on<CoinConvert>((event, emit) async {
      //
      final (double, double) conversed = CurrencyConverter.convertCrypto(
        crypto: event.coins.$1,
        target: event.coins.$2,
      );

      emit(
        CoinsConverter(
          coins: [event.coins.$1, event.coins.$2],
          conversed: conversed,
        ),
      );
    });
  }
}
