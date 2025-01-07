import 'dart:convert' show jsonDecode;
import 'package:universal_io/io.dart' show Platform, File;

import 'package:flutter/services.dart' show rootBundle;

import '../../configurations/types.dart';
import '../../contracts/coins_client_interface.dart';
import '../../domain/core/result.dart';

class MockClient implements CoinsClientInterface {
  @override
  Future<Result<APIResponse>> fetch({required String coinsTarget}) async {
    // Load file from local

    const String path = "assets/json/response_mock.json";
    // const Duration duration = Duration(seconds: 2);
    const Duration duration = Duration.zero;

    if (Platform.isAndroid) {
      var response = jsonDecode(await rootBundle.loadString(path));

      return Future.delayed(
        duration,
        () => Ok(value: response),
      );
    }

    final File file = File(path);

    final APIResponse response = jsonDecode(file.readAsStringSync());

    return Future.delayed(
      duration,
      () => Ok(value: response),
    );
  }
}
