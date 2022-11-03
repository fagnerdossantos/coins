import 'package:coins/utils/consts.dart';

abstract class APIControllerInterface {
  Future<APIResponse> fetch();
}
