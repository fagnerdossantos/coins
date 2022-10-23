import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/src/logic/models/enum_pages.dart';
import 'package:coins/utils/consts.dart';

class ReloadButton extends StatelessWidget {
  final EnumPages page;
  const ReloadButton({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //Style
      backgroundColor: white,
      splashColor: deepPurple,
      // Action
      onPressed: () async {
        switch (page) {
          case EnumPages.homePage:
            // Controller
            await context.read<APIController>().fetch();
            break;

          case EnumPages.errorPage:
            Navigator.popAndPushNamed(context, "/");
            break;
          default:
        }
      },
      child: const Icon(
        Icons.replay_outlined,
        color: deepPurple,
      ),
    );
  }
}
