import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        AssetImage,
        BoxDecoration,
        BoxFit,
        BuildContext,
        Center,
        Color,
        Container,
        DecoratedBox,
        DecorationImage,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        Widget;

import '../../configurations/colors.dart';
import '../../data/models/coin.dart';
import '../../domain/usecases/currency_formatter.dart';

class CryptoBox extends StatelessWidget {
  //
  final Coin coin;
  final Color color;

  const CryptoBox({
    super.key,
    required this.coin,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Settings
    final glassEffect = pureBlack.withValues(alpha: .5);
    final imagePath = "assets/images/${coin.imagePath}";
    final double price = coin.price;
    final String initials = coin.key;

    final CurrencyFormatter formatter = CurrencyFormatter();

    return Stack(
      children: [
        // Outer container
        SizedBox.expand(
          child: DecoratedBox(
            // Styling
            decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // Glass effect
        Container(
          color: glassEffect,
        ),

        // Initials
        Center(
          child: Text(
            initials,

            // Styling
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: neutralGray),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            formatter.format(price),

            // Styling
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: neutralGray),

            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
