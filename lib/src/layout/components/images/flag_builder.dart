import 'package:coins/src/helpers/coins_helper.dart';
import 'package:coins/src/layout/components/images/flags.dart';
import 'package:flutter/material.dart';

class FlagBuilder extends StatelessWidget {
  const FlagBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [];

    for (var iterable in continentsList) {
      for (var value in iterable) {
        imagesList.add(value.image);
      }
    }

    return Wrap(
      // Alignment
      alignment: WrapAlignment.spaceEvenly,
      spacing: 5,
      runSpacing: 5,
      children: List.generate(
        imagesList.length,
        (index) => Flags(
          image: imagesList[index],
        ),
      ),
    );
  }
}
