import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.blueAccent,
    );
  }
}
