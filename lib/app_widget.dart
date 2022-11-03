import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/api/models/api_mock_model.dart';
import 'package:coins/src/api/models/api_model.dart';
import 'package:coins/src/api/repositories/connection_repository.dart';
import 'package:coins/src/database/coins_store.dart';
import 'package:coins/src/logic/home_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          create: (context) => APIController(context.read<APIModel>()),
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
          "/": (context) => const HomeBuilder(),
        },

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}