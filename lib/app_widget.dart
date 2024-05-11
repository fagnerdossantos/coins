import 'package:coins/src/layout/about/views/about_view.dart';
import 'package:coins/src/utils/custom_theme.dart';
import 'package:flutter/material.dart';

import 'src/layout/home/views/home_view_builder.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Providers
    return MaterialApp(
      //
      theme: CustomTheme.theme,

      initialRoute: '/',

      routes: {
        '/': (_) => const HomeViewBuilder(),
        '/about': (_) => const AboutView(),
      },

      // banner false
      debugShowCheckedModeBanner: false,
    );
  }
}
