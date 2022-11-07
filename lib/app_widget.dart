import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/layout/details/coin_detail.dart';
import 'package:coins/src/logic/home_builder.dart';
import 'package:coins/src/providers/providers.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        // Routs
        initialRoute: "/",

        routes: {
          "/": (_) => const HomeBuilder(),
          "/coindetail": (_) => const CoinDetail(),
        },

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
