import 'dart:convert';

import "package:http/http.dart" as http;

import 'package:coins/utils/consts.dart';

abstract class APIModel {
  Future<CoinResponse> fetch(String coins);
}

class APIModelImp implements APIModel {
  //
  final String _target = "https://economia.awesomeapi.com.br/json/last/";

  @override
  Future<CoinResponse> fetch(String coins) async {
    try {
      final url = Uri.parse("$_target$coins");

      final response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : {"error": true};
    } catch (error) {
      return {"error": error};
    }
  }
}

// ! Local API for testing purpose
class FakeAPIModelImp implements APIModel {
  //
  final String _target = "http://192.168.0.26:8000/";

  @override
  Future<CoinResponse> fetch(String coins) async {
    try {
      final url = Uri.parse(_target);

      final response = await http.get(url);

      return response.statusCode == 200
          ? jsonDecode(utf8.decode(response.bodyBytes))
          : {"error": true};
    } catch (error) {
      return {"error": (error)};
    }
  }
}
