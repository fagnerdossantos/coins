import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/global/components/rounded_card.dart';
import 'package:coins/src/app/home/components/price_banner_content.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class PriceBannerBox extends StatelessWidget {
  final Size size;
  final CoinsBlocState state;
  const PriceBannerBox({super.key, required this.size, required this.state});

  @override
  Widget build(BuildContext context) {
    // Size
    final double width = size.width;

    return RoundedCard(
      child: Container(
        // Size
        height: 200,
        width: width,

        decoration: BoxDecoration(
          // Gradient
          gradient: LinearGradient(
            // colors
            colors: bannerGradient,

            // Gradient Align
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: const GradientRotation(.3),
          ),

          // Shape
          borderRadius: circularRadius,
        ),

        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),

        child: PriceBannerContent(
          state: state,
        ),
      ),
    );
  }
}
