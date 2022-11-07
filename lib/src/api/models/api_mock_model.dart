import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:coins/src/api/interfaces/api_model_interface.dart';
import 'package:coins/utils/consts.dart';


class APIMockModel implements APIModelInterface {
  // Url Target
  //final String _target = "http://127.0.0.1:8000";
  final String _target = "http://192.168.0.26:8000";

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
