import 'package:flutter/material.dart';

import 'package:coins/src/helpers/pages_helper.dart';
import 'package:coins/src/layout/components/buttons/reload_button.dart';
import 'package:coins/src/layout/components/images/flag_builder.dart';
import 'package:coins/src/layout/components/labels/labels.dart';
import 'package:coins/src/logic/models/pages_model.dart';
import 'package:coins/utils/consts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size size = MediaQuery.of(context).size;

    return PagesModel(
      // Size
      size: size,

      floatingActionButton: const ReloadButton(
        page: Pages.error,
      ),

      label: "Erro",

      // Content
      child: Column(
        children: const [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),

          // Label message
          Labels(
            color: red,
            text:
                "Poxa! Algo saiu errado. Verifique a conexão e tente novamente!",
          ),

          SizedBox(
            height: 30,
          ),

          Expanded(
            flex: 4,
            child: FlagBuilder(),
          ),
        ],
      ),
    );
  }
}
