import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:api_module/src/interfaces/api_model_interface.dart';
import 'package:api_module/src/utils/types.dart';

class APIModel implements APIModelInterface {
  // Url Target
  final String _target = "https://economia.awesomeapi.com.br/json/last/";

  @override
  Future<APIResponse> fetch({required String coins}) async {
    // Final url
    final Uri url = Uri.parse(_target + coins);

    try {
      // Requesting final
      final http.Response response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : {"error": true};
    } catch (error) {
      return {"error": true};
    }
  }
}
