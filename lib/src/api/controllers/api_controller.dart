

import 'package:coins/src/api/helpers/coins_helper.dart';
import 'package:coins/src/api/interfaces/api_controller_interface.dart';
import 'package:coins/src/api/interfaces/api_model_interface.dart';
import 'package:coins/utils/consts.dart';

class APIController implements APIControllerInterface {
  // Dependencies
  final APIModelInterface _model;
  APIController(this._model);

  @override
  Future<APIResponse> fetch() async {
    String coins = "";

    for (var iterable in continentsList) {
      for (var value in iterable) {
        coins += value.label;
      }
    }

    final APIResponse response = await _model.fetch(coins: coins);
    return response;
  }
}
