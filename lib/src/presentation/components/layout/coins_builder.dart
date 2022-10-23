import 'package:flutter/material.dart';

import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/presentation/components/layout/coin_boxe.dart';

class CoinsBuilder extends StatelessWidget {
  final FiatOrCrypto fiatOrCrypto;
  const CoinsBuilder({
    Key? key,
    required this.fiatOrCrypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    bool notCripto = (fiatOrCrypto == FiatOrCrypto.fiat ? true : false);
    final int len = EnumCoins.values.length - 2;
    const List<EnumCoins> coinslist = EnumCoins.values;

    // Building list
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: notCripto ? len : 2,
      itemBuilder: (context, index) {
        // Give Some padding btween boxes
        return notCripto
            ? CoinBox(
                index: index,
                len: len,
                notCripto: notCripto,
                coinslist: coinslist,
              )
            : CoinBox(
                index: index,
                len: len,
                notCripto: notCripto,
                coinslist: coinslist,
              );
      },
    );
  }
}
