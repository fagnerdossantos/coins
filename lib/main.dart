import 'package:flutter/material.dart';

import 'package:coins/app_widget.dart';

import 'src/providers/app_provider.dart';

void main() {
  // Registering the instancies
  AppInstancies().register();

  runApp(const AppWidget());
}
