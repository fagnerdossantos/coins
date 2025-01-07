import 'package:flutter/widgets.dart'
    show BuildContext, ListenableBuilder, State, StatefulWidget, Widget;

import '../../data/datasources/coins_cache.dart';
import '../../data/repositories/coins_repository.dart';
import '../../configurations/app_instancies.dart';
import '../viewmodel/coins_viewmodel.dart';
import '../views/home_view.dart';
import '../views/load_view.dart';

class HomeBuilder extends StatefulWidget {
  const HomeBuilder({super.key});

  @override
  State<HomeBuilder> createState() => _HomeBuilderState();
}

class _HomeBuilderState extends State<HomeBuilder> {
  late final CoinsViewmodel model;

  @override
  void initState() {
    //
    model = CoinsViewmodel(
      cache: getIt<CoinsCache>(),
      repository: getIt<CoinsRepository>(),
    );

    model.loadCoins();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: model,
      builder: (_, __) {
        return (model.coins.isEmpty)
            ? const LoadView()
            : HomeView(model: model);
      },
    );
  }
}
