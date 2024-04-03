import 'package:flutter/material.dart'
    show
        BuildContext,
        Card,
        Center,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;

import 'continent_builder.dart';

class ContinentBox extends StatelessWidget {
  final int index;
  const ContinentBox({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        //
        width: 120,

        child: Center(
          child: Text(
            Continents.values[index].name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
