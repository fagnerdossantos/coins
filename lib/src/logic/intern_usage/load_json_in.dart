import 'dart:convert' show jsonDecode;
import 'dart:io' show File;

import '../../utils/types.dart';

class LoadJsonIn {
// Json path
  static const _path = "assets/intern/coins.json";

  APIResponse _jsonMap = {};
  APIResponse get jsonMap => _jsonMap;

  LoadJsonIn() {
    // Loading JSON
    _jsonMap = load();
  }

  APIResponse load() {
    return jsonDecode(File(_path).readAsStringSync());
  }
}
