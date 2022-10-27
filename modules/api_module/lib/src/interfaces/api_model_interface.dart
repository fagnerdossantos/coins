import 'package:api_module/src/utils/types.dart';

abstract class APIModelInterface {
  Future<APIResponse> fetch({required String coins});
}
