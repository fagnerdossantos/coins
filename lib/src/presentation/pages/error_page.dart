import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:flutter/material.dart';

import 'package:coins/src/presentation/components/button/reload_button.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // Size
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              """
            Poxa! Algo saiu errado.
            Verifique sua conexão com a internet e tente novamente.
            """,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: const ReloadButton(
        page: EnumPages.errorPage,
      ),
    );
  }
}
