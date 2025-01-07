import 'package:coins/src/configurations/theme_fonts.dart';
import 'package:flutter/material.dart';

final class CustomTheme {
  //
  static ThemeData get theme => _theme;
  //
  static final ThemeData _theme = ThemeData(
    // Material
    useMaterial3: true,

    colorSchemeSeed: Colors.greenAccent,

    textTheme: ThemeFonts.textTheme,
  );
}
