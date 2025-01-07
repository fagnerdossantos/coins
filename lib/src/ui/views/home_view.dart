import 'package:flutter/material.dart'
    show
        BuildContext,
        FloatingActionButton,
        Icon,
        Icons,
        MediaQuery,
        NestedScrollView,
        Scaffold,
        Size,
        StatelessWidget,
        Widget;

import '../../configurations/utils.dart';
import '../components/home_app_bar.dart';
import '../viewmodel/coins_viewmodel.dart';
import '../widgets/coins_builder.dart';

class HomeView extends StatelessWidget {
  final CoinsViewmodel model;
  const HomeView({
    super.key,
    required this.model,
  });

  //
  @override
  Widget build(BuildContext context) {
    //!

    //
    final Size size = MediaQuery.sizeOf(context);
    final (double width, double height) = (size.width, size.height);

    return Scaffold(
      //
      backgroundColor: neutralGray,
      //
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            HomeAppBar(
              height: height,
              coins: model.coins,
            )
          ];
        },
        body: CoinsBuilder(data: model.coins),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.loadCoins(),
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
