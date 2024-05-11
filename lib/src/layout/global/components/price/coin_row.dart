import 'package:flutter/material.dart'
    show BuildContext, Card, ListTile, StatelessWidget, Widget;

import '../../../../logic/models/coin.dart';
import '../image/rounded_image.dart';
import 'coin_initials.dart';
import 'coin_name.dart';
import 'coin_price.dart';

class CoinRow extends StatelessWidget {
  final Coin data;
  const CoinRow({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: RoundedImage(path: data.imagePath),
        title: CoinInitials(model: data),
        subtitle: CoinName(name: data.name),
        trailing: CoinPrice(model: data),
      ),
    );
  }
}
