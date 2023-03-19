import 'package:coins/src/api/interfaces/api_interfaces.dart';
import 'package:coins/src/helpers/coins_helper.dart';
import 'package:coins/utils/consts.dart';

class APIController implements APIControllerInterface {
  // Dependencies
  final APIModelInterface _model;
  APIController(this._model);

  @override
  Future<APIResponse> fetch() async {
    String coins = "";

    for (var continent in Continents.values) {
      coins += getCountriesByContinent(continent)
          .map((country) => country[0])
          .join();
    }

    final APIResponse response = await _model.fetch(coins: coins);

    return response;
  }
}
