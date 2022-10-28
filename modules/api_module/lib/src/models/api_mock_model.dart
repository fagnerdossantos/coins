import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:api_module/api_module.dart';

class APIMockModel implements APIModelInterface {
  // Url Target
  final String _target = "http://127.0.0.1:8000";

  @override
  Future<APIResponse> fetch({required String coins}) async {
    // Final url
    final Uri url = Uri.parse(_target);

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
