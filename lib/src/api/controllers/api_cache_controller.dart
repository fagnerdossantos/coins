import 'package:coins/utils/consts.dart';

class APICacheController {
  static APIResponse _cache = {};

  static set setCache(APIResponse map) {
    if (_cache.isNotEmpty) cache.clear();
    _cache = map;
  }

  static APIResponse get cache => _cache;
}
