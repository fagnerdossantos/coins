// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/helpers/coins_helper.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

import 'package:coins/src/app/global/components/rounded_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContinentBox extends StatelessWidget {
  final int id;
  const ContinentBox({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Bloc
    final controller = BlocProvider.of<CoinsBloc>(context);

    // Continents

    return GestureDetector(
      // Action -- Adding event to BLOC
      onTap: () => controller.add(
        FilterCoinEvent(
          continent: Continents.values[id],
        ),
      ),

      // Content
      child: RoundedCard(
        //
        child: _ContinentBoxStyle(
          child: Center(
            child: Text(
              Continents.values[id].name,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ),
    );
  }
}

class _ContinentBoxStyle extends StatelessWidget {
  final Widget child;
  const _ContinentBoxStyle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Size
      width: 120,

      // Styling
      decoration: BoxDecoration(
        // Gradient
        gradient: LinearGradient(
          colors: continentBoxGradient,

          // Gradient Align
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: const GradientRotation(.3),
        ),

        // Shape
        borderRadius: circularRadius,
      ),

      child: child,
    );
  }
}
