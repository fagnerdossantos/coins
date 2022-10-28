import 'package:flutter/material.dart';

import 'package:api_module/api_module.dart'
    show
        APIModel,
        APIController,
        CoinsStore,
        ConnectionRepository,
        APIMockModel;

import 'package:provider/provider.dart';

import 'package:home_module/home_module.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => APIModel(),
        ),

        // ! Mock model
        Provider(
          create: (_) => APIMockModel(),
        ),

        Provider(
          create: (context) => APIController(context.read<APIMockModel>()),
        ),
        ChangeNotifierProvider(create: (context) => CoinsStore()),
        Provider(
          create: (context) => ConnectionRepository(
              context.read<APIController>(), context.read<CoinsStore>()),
        ),
      ],
      child: MaterialApp(
        // Routs
        initialRoute: "/",

        routes: {
          "/": (context) => const MobileHomePage(),
        },

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
