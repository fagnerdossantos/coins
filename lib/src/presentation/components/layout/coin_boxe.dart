import 'package:flutter/material.dart';

import 'package:coins/src/logic/models/enum_coins.dart';
import 'package:coins/src/presentation/components/image/flag_image.dart';
import 'package:coins/src/presentation/components/price/price.dart';
import 'package:coins/utils/consts.dart';

class CoinBox extends StatelessWidget {
  final int index;
  final int len;
  final List<EnumCoins> coinslist;
  final bool notCripto;
  const CoinBox({
    Key? key,
    required this.index,
    required this.coinslist,
    required this.notCripto,
    required this.len,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 170,
        child: DecoratedBox(
          decoration: BoxDecoration(
            // Color
            color: deepPurple,

            // Shape
            borderRadius: radius,
          ),

          // Box content
          child: Column(
            children: [
              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),

              // initials
              Expanded(
                flex: 1,
                child: notCripto
                    ? Text(
                        coinslist[index].key.replaceAll("BRL", ""),
                        style: priceStyle,
                      )
                    : Text(
                        coinslist[index + len].key.replaceAll("BRL", ""),
                        style: priceStyle,
                      ),
              ),

              // Img
              Expanded(
                flex: 3,
                child: notCripto
                    ? FlagImage(
                        image: coinslist[index].img,
                      )
                    : FlagImage(
                        image: coinslist[index + len].img,
                      ),
              ),

              // Price
              Expanded(
                flex: 1,
                child: notCripto ? Price(
                  index: index,
                ) : Price(
                  index: index + len,
                ),
              ),

              // Give Some space
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
