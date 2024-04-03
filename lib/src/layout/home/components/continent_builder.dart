import 'package:flutter/material.dart'
    show
        Axis,
        BuildContext,
        InkWell,
        ListView,
        SizedBox,
        StatelessWidget,
        Widget;
import 'package:provider/provider.dart' show ReadContext;

import '../../../logic/bloc/coins_bloc.dart';
import 'continent_box.dart';

enum Continents {
  all,
  america,
  asia,
  africa,
  europe,
  oceania;

  String get name => switch (this) {
        Continents.all => "All",
        Continents.america => "América",
        Continents.asia => "Ásia",
        Continents.africa => "África",
        Continents.europe => "Europa",
        Continents.oceania => "Oceania",
      };
}

class ContinentBuilder extends StatelessWidget {
  const ContinentBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final CoinsBloc bloc = context.read<CoinsBloc>();

    return SizedBox(
      // Sizing
      height: 45,

      child: ListView.builder(
        // Settings
        itemCount: Continents.values.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          //

          return InkWell(
            onTap: () => bloc.add(
              CoinByContinent(
                continent: Continents.values[index],
              ),
            ),
            child: ContinentBox(index: index),
          );
        },
      ),
    );
  }
}
