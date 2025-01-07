import 'dart:convert';
import 'dart:io';

import 'package:coins/src/configurations/types.dart';
import 'package:flutter/services.dart';

import '../../contracts/coins_client_interface.dart';

class MockClient implements CoinsClientInterface {
  @override
  Future<APIResponse> fetch({required String coinsTarget}) async {
    // Load file from local

    const String path = "assets/json/response_mock.json";
    // const Duration duration = Duration(seconds: 2);
    const Duration duration = Duration.zero;

    if (Platform.isAndroid) {
      var response = jsonDecode(await rootBundle.loadString(path));

      return Future.delayed(
        duration,
        () => response,
      );
    }

    final File file = File(path);

    final APIResponse response = jsonDecode(file.readAsStringSync());

    return Future.delayed(
      duration,
      () => response,
    );
  }
}
