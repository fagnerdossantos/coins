import 'package:coins/app_widget.dart';
import 'package:device_preview_plus/device_preview_plus.dart'
    show DevicePreview;
import 'package:flutter/foundation.dart';
// import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart' show runApp;

import 'src/configurations/app_instancies.dart';

void main() {
  // Registering the instancies
  AppInstancies().register();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,

      builder: (_) => AppWidget(), // Wrap your app
    ),
  );
}
