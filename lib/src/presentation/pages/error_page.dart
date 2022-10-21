import 'package:flutter/material.dart';

import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:coins/src/presentation/components/button/reload_button.dart';
import 'package:coins/utils/consts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Error message
    const String errorMessage =
        "Poxa! Algo saiu errado.\nVerifique sua conexão com a internet e tente novamente.";
    return Scaffold(
      body: SizedBox(
        // Size
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              errorMessage,
              style: TextStyle(
                color: red,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
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
