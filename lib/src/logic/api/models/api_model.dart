import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' show get, Response;

import '../../../utils/types.dart';
import '../interfaces/i_api_model.dart';

class APIModel implements IApiModel {
  // Url Target
  final String _target = "https://economia.awesomeapi.com.br/json/last/";

  @override
  Future<APIResponse> fetch({required String coinsTarget}) async {
    // Final url
    final Uri url = Uri.parse(_target + coinsTarget);

    try {
      // Requesting API
      final Response response = await get(url);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }

      return {"error": true};
    } catch (error) {
      return {"error": error};
    }
  }
}
