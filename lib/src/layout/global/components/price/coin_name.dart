import 'package:flutter/material.dart'
    show BuildContext, StatelessWidget, Text, Theme, Widget;

class CoinName extends StatelessWidget {
  final String name;
  const CoinName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name.replaceAll("/Real Brasileiro", ""),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 15),
    );
  }
}
