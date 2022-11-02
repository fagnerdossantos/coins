import 'dart:convert';
import 'dart:io' as io show File;

import 'package:api_module/src/interfaces/image_convert_interface.dart';

class ImageConvertController implements ImageConvertInterface {
  // Encode Image
  @override
  String encode({required String image}) {
    final List<int> imagBytes = io.File(image).readAsBytesSync();
    String img64 = base64Encode(imagBytes);
    return img64;
  }

  @override
  List<int> decode({required String image}) {
    final List<int> imageBytes = base64Decode(image);
    return imageBytes;
  }
}
