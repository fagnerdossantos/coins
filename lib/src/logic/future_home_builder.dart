import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/logic/controllers/api_call_controller.dart';
import 'package:coins/src/presentation/pages/error_page.dart';
import 'package:coins/src/presentation/pages/loading_page.dart';
import 'package:coins/src/presentation/pages/mobile_home_page.dart';
import 'package:coins/src/presentation/pages/tablet_home_page.dart';
import 'package:coins/utils/consts.dart';

class FutureHome extends StatelessWidget {
  const FutureHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = context.read<APICallController>();

    return FutureBuilder(
      future: controller.apiCall(context),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        // API HAS DATA
        if (snapshot.hasData) {
          if (snapshot.data.containsKey("error")) {
            return const ErrorPage();
          } else {
            //print(snapshot.data);
            return const HomeBuilder();
          }

          // Already loading
        } else {
          return const LoadingPage();
        }
      },
    );
  }
}

/// Used to verify the screen size and type of device
class HomeBuilder extends StatelessWidget {
  const HomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext constext, BoxConstraints constraints) {
        // Mobile
        if (constraints.maxWidth <= mobileWidth) {
          return const MobileHomePage();

          // Tablet
        } else if (constraints.maxWidth > mobileWidth &&
            constraints.maxWidth <= tabletWith) {
          return const TabletHomePage();

          // Desktop
        } else {
          return Container(
            color: blue,
          );
        }
      },
    );
  }
}
