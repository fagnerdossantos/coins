import 'package:coins/src/providers/app_provider.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:coins/app_widget.dart';

void main() {
  // Registering the instancies
  AppInstancies().register();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // !

      builder: (_) => AppWidget(), // Wrap your app
    ),
  );
}
