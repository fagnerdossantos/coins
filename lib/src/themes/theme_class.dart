import 'package:coins/src/themes/themes_fonts.dart';
import 'package:flutter/material.dart';

class ThemeClass {
  ThemeData theme = ThemeData(
    // Material
    useMaterial3: true,

    // Fonts
    textTheme: ThemeFonts().textTheme,
  );
}
