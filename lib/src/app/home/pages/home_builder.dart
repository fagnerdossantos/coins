import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/home/pages/home_page.dart';
import 'package:coins/src/app/load/pages/load_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final blocController = BlocProvider.of<CoinsBloc>(context);

    blocController.add(FetchCoinEvent());

    return BlocBuilder<CoinsBloc, CoinsBlocState>(
      builder: (context, state) {
        // Load
        if (state is CoinsLoadState) {
          // Loading
          return const LoadPage();

          // Success or Filtered
        } else if (state is CoinsSuccessState ||
            state is CoinsFilteredState) {
          return HomePage(
            state: state,
          );
        }

        return Container();
      },
    );
  }
}
