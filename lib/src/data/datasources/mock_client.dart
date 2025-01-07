import 'package:coins/src/data/models/response_mock.dart';

import '../../configurations/types.dart';
import '../../contracts/coins_client_interface.dart';
import '../../domain/core/result.dart';

class MockClient implements CoinsClientInterface {
  @override
  Future<Result<APIResponse>> fetch({required String coinsTarget}) async {
    // Load file from local
    const Duration duration = Duration.zero;

    return Future.delayed(
      duration,
      () => Ok(value: mockResponse),
    );
  }
}
