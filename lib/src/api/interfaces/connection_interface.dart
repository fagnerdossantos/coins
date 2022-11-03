import 'package:coins/utils/consts.dart';

abstract class ConnectionInterface {
  Future<APIResponse> hasData();
}
