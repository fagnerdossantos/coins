import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final blocController = BlocProvider.of<CoinsBloc>(context);

    blocController.add(FetchCoinPriceEvent());

    return BlocBuilder<CoinsBloc, CoinsBlocState>(
      builder: (context, state) {
        // Load
        if (state is CoinsBlocLoadState) {
          // Loading
          return const CircularProgressIndicator();

          // Success
        } else if (state is CoinsBlocSuccessState) {
          return const HomePage();
        }

        return const HomePage();
      },
    );
  }
}
