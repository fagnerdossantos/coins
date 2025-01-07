import 'package:flutter/material.dart'
    show
        AssetImage,
        BuildContext,
        CircleAvatar,
        ListTile,
        StatelessWidget,
        Text,
        Theme,
        Widget;

import '../../data/models/coin.dart';
import '../../domain/usecases/currency_formatter.dart';

class CoinRow extends StatelessWidget {
  final Coin data;
  const CoinRow({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    //
    final CurrencyFormatter formatter = CurrencyFormatter();

    return ListTile(
      // Image
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/${data.imagePath}"),
      ),

      // Initials
      title: Text(
        data.key,
        style: Theme.of(context).textTheme.bodyMedium,
      ),

      // Name
      subtitle: Text(
        data.name,
        style: Theme.of(context).textTheme.bodySmall,
      ),

      // Price
      trailing: Text(
        formatter.format(data.price),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14),
      ),
    );
  }
}
