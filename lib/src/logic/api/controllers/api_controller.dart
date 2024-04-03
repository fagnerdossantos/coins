import '../../../utils/types.dart';
import '../../intern_usage/load_json_in.dart';
import '../interfaces/i_api_controller.dart';
import '../interfaces/i_api_model.dart';

class APIController implements IApiController {
  // Dependencies
  final IApiModel _model;
  final LoadJsonIn _intern;
  const APIController(this._model, this._intern);

  @override
  Future<APIResponse> fetch() async {
    //
    final RegExp exp = RegExp(r"[()]|\s");

    String keys = _getKeysWithBRLSuffix();

    /// Used to remove the last comma "," 'cause when used [_getKeyWithBRLSuffix] fun
    /// This adds a (-BRL) for each key and concatenate to make the correct pair call
    /// Example: original key is [USD, CNH, EUR ...]
    /// When called it turns to [USD-BRL] and adds a comma [USD-BRL,]
    /// When all keys ready is needed to remove the last comma
    /// Final it is ex: [USD-BRL,CNH-BRL,EUR-BRL] and so on.
    keys = keys.substring(0, keys.length - 1);

    final response = await _model.fetch(coinsTarget: keys.replaceAll(exp, ""));

    return response;
  }

  String _getKeysWithBRLSuffix() {
    String keys = "";
    for (APIResponse map in _intern.jsonMap.values) {
      keys += map.keys.map((e) => "$e-BRL").join(",");
      keys += ",";
    }
    return keys;
  }
}
