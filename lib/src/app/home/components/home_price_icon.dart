import 'package:flutter/material.dart';

class HomePriceIcon extends StatelessWidget {
  const HomePriceIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 40,

          // Icon
          child: ClipRRect(
            child: Image(
              image: AssetImage("assets/icon/icon.png"),
            ),
          ),
        ),

        // Label
        Text(
          "Coins ",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
