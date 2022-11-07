import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/repositories/connection_repository.dart';
import 'package:coins/src/layout/error/error_page.dart';
import 'package:coins/src/layout/home/home_page.dart';
import 'package:coins/src/layout/loading/loading_page.dart';
import 'package:coins/utils/consts.dart';

class HomeBuilder extends StatelessWidget {
  const HomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: context.read<ConnectionRepository>().hasData(),
      builder: (_, AsyncSnapshot<APIResponse> snapshot) {
        // Waiting Response
        if (snapshot.connectionState.name == "waiting") {
          return const LoadingPage();
        }

        return snapshot.data!.containsKey("error")
            ? const ErrorPage()
            : const HomePage();
      },
    );
  }
}
