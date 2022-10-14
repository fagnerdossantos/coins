import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'package:coins/src/api/controllers/api_controller.dart';
import 'package:coins/utils/consts.dart';

class APICallController {
  // Call the API
  Future<CoinResponse> apiCall(BuildContext context) async {
    // Controller
    final controller = context.read<APIController>();
    await controller.fetch();

    await Future.delayed(const Duration(seconds: 2));

    return controller.response;
  }
}
