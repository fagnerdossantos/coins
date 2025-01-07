import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' show Response, get;

import '../../configurations/types.dart';
import '../../contracts/coins_client_interface.dart';

class CoinsClientHttp implements CoinsClientInterface {
  //
  static const _targetUrl = "https://economia.awesomeapi.com.br/json/last/";

  @override
  Future<APIResponse> fetch({required String coinsTarget}) async {
    //
    // Final url
    final Uri url = Uri.parse(_targetUrl + coinsTarget);
    late final Response response;

    try {
      response = await get(url);

      if (response.statusCode != 200) {
        return {"error": "Server error!"};
      }

      return jsonDecode(response.body) as APIResponse;
    } catch (error) {
      return {"error": error};
    }
  }
}
