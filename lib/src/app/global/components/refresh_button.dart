import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefreshButton extends StatelessWidget {
  final CoinsBlocState state;
  const RefreshButton({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    // Bloc
    final controller = BlocProvider.of<CoinsBloc>(context);

    return FloatingActionButton(
      // Action
      onPressed: () {
        if (state is CoinsFilteredState) {
          controller.add(AllCoinsEvent());
        } else {
          controller.add(FetchCoinEvent());
        }
      },

      // Child
      child: state is CoinsFilteredState
          ? const Icon(Icons.arrow_back_ios_new)
          : const Icon(Icons.refresh),
    );
  }
}
