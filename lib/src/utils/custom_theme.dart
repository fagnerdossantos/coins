import 'package:coins/src/utils/theme_fonts.dart';
import 'package:flutter/material.dart';

final class CustomTheme {
  //
  static ThemeData get theme => _theme;
  //
  static final ThemeData _theme = ThemeData(
    // Material
    useMaterial3: true,

    colorSchemeSeed: Colors.blueGrey,

    textTheme: ThemeFonts.textTheme,
  );
}
