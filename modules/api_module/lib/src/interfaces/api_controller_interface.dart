import 'package:api_module/src/utils/types.dart';

abstract class APIControllerInterface {
  Future<APIResponse> fetch();
}
