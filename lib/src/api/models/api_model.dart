import 'dart:convert';

import "package:http/http.dart" as http;

import 'package:coins/utils/consts.dart';

class APIModel {
  //
  final String _target = "https://economia.awesomeapi.com.br/json/last/";

  Future<CoinResponse> fetch(String coins) async {
    try {
      final url = Uri.parse("$_target$coins");

      final response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : {"error": true};
    } catch (error) {
      return {"error": (error)};
    }
  }
}
