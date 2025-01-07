import 'dart:convert';

import 'package:coins/src/configurations/types.dart';
import 'package:coins/src/contracts/coins_client_interface.dart';
import 'package:http/http.dart';

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
