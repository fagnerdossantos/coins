import 'package:coins/src/app/home/pages/home_builder.dart';
import 'package:coins/src/providers/app_providers.dart';
import 'package:coins/src/themes/theme_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // APP providers
      providers: providersList,

      child: MaterialApp(
        home: const HomeBuilder(),

        // Them
        theme: ThemeClass().theme,

        // banner false
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
