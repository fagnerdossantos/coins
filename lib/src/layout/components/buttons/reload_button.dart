import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/repositories/connection_repository.dart';
import 'package:coins/src/helpers/pages_helper.dart';
import 'package:coins/utils/consts.dart';

class ReloadButton extends StatelessWidget {
  final Pages page;
  const ReloadButton({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = context.read<ConnectionRepository>();

    return FloatingActionButton(
      // ACTION
      onPressed: () {
        //
        switch (page) {
          case Pages.home:
            controller.hasData();
            break;

          case Pages.error:
            Navigator.popAndPushNamed(context, "/");
            break;
        }
      },

      backgroundColor: deepPurple.withOpacity(0.9),
      // ICON
      child: const Icon(
        Icons.restart_alt,
      ),
    );
  }
}
