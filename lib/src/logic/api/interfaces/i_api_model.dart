import '../../../utils/types.dart';

abstract interface class IApiModel {
  Future<APIResponse> fetch({required String coinsTarget});
}
