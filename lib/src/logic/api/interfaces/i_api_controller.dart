import '../../../utils/types.dart';

abstract interface class IApiController {
  Future<APIResponse> fetch();
}
