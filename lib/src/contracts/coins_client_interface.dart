import '../configurations/types.dart';
import '../domain/core/result.dart';

abstract interface class CoinsClientInterface {
  // Url Target
  Future<Result<APIResponse>> fetch({required String coinsTarget});
}
