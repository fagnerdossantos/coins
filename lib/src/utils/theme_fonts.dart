import 'package:coins/src/utils/utils.dart' show black;
import 'package:flutter/material.dart';

final class ThemeFonts {
  //
  static TextTheme get textTheme => _textTheme;
  //
  static final TextTheme _textTheme = TextTheme(
    // Title
    bodyLarge: TextStyle(
      color: black.withOpacity(.8),
      fontSize: 30,
      fontWeight: FontWeight.w500,
    ),

    bodyMedium: TextStyle(
      color: black.withOpacity(.8),
      fontSize: 25,
      fontWeight: FontWeight.w400,
    ),

    bodySmall: TextStyle(
      color: black.withOpacity(.8),
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
  );
}
