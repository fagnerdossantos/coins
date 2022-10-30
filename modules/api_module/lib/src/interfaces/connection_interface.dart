import 'package:api_module/src/utils/types.dart';

abstract class ConnectionInterface {
  Future<APIResponse> hasData();
}
