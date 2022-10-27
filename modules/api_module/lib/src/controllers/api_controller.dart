import 'package:api_module/src/interfaces/api_controller_interface.dart';
import 'package:api_module/src/interfaces/api_model_interface.dart';
import 'package:api_module/src/utils/enum_coins.dart';
import 'package:api_module/src/utils/types.dart';

class APIController implements APIControllerInterface {
  // Dependencies
  final APIModelInterface _model;
  APIController(this._model);

  @override
  Future<APIResponse> fetch() async {
    String coins = "";

    for (EnumCoins value in EnumCoins.values) {
      coins += value.label;
    }

    final APIResponse response = await _model.fetch(coins: coins);
    return response;
  }
}
