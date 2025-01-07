import 'dart:convert' show jsonDecode;
import 'dart:io' show Platform, File;

import 'package:flutter/services.dart' show rootBundle;

import '../../contracts/file_loader_interface.dart';

class LoadFile implements FileLoaderInterface {
  @override
  Future<({Map<String, dynamic>? data, bool error})> json(String path) async {
    try {
      //

      if (Platform.isAndroid) {
        return (
          data: jsonDecode(await rootBundle.loadString(path))
              as Map<String, dynamic>,
          error: false,
        );
      }

      final file = File(path);
      final json = file.readAsStringSync();

      return (
        data: jsonDecode(json) as Map<String, dynamic>,
        error: false,
      );
    } catch (error) {
      return (data: null, error: true);
    }
  }
}
