import 'dart:convert';

import 'package:coins/src/api/interfaces/api_interfaces.dart';
import 'package:coins/utils/consts.dart';

import 'package:http/http.dart' as http;

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
      return {"error": error};
    }
  }
}
