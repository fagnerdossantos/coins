import 'package:flutter/material.dart';

import '../../../logic/controllers/currency_converter.dart';
import '../../../logic/models/coin.dart';
import '../../../utils/utils.dart';

class AboutViewAppBar extends StatelessWidget implements PreferredSize {
  final Coin data;
  const AboutViewAppBar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // Difference calculus
    // MAX
    final int maxPct = CurrencyConverter.percent(
      value: data.price,
      reference: data.high,
    );

    // MIN
    final int minPct = CurrencyConverter.percent(
      value: data.price,
      reference: data.low,
    );

    return AppBar(
      title: Text(data.name.replaceAll("/Real Brasileiro", "")),
      centerTitle: true,
      backgroundColor: (maxPct.abs() > minPct.abs())
          ? red.withOpacity(.5)
          : green.withOpacity(.5),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
