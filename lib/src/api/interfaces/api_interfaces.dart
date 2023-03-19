import 'package:coins/utils/consts.dart';

abstract class APIModelInterface {
  Future<APIResponse> fetch({required String coins});
}

abstract class APIControllerInterface {
  Future<APIResponse> fetch();
}
