import 'package:coins/src/layout/components/images/flag_builder.dart';
import 'package:coins/src/layout/components/labels/labels.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
