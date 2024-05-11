import 'package:coins/src/layout/home/views/loading_view.dart';
import 'package:coins/src/providers/app_provider.dart';
import 'package:flutter/material.dart'
    show BuildContext, Container, State, StatefulWidget, Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../logic/bloc/coins_bloc.dart';
import 'home_view.dart';

class HomeViewBuilder extends StatefulWidget {
  const HomeViewBuilder({super.key});

  @override
  State<HomeViewBuilder> createState() => _HomeViewBuilderState();
}

class _HomeViewBuilderState extends State<HomeViewBuilder> {
  @override
  void initState() {
    getIt<CoinsBloc>().add(LoadAll());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinsBloc, CoinsState>(
      bloc: getIt<CoinsBloc>(),
      builder: (_, state) {
        return switch (state) {
          CoinsLoaded(coins: final coins) => HomeView(coins: coins),
          CoinsFiltered(coins: final coins) => HomeView(coins: coins),
          CoinsLoading() => const LoadingView(),
          _ => Container(),
        };
      },
    );
  }
}
