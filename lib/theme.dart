import 'package:flutter/material.dart';

class AppTheme {
  //5 main colors in color pallette
  static Color get black => _getColorFromHex('#000000');
  static Color get grey => _getColorFromHex('#e7e7e7');
  static Color get pink => _getColorFromHex('#f81bb2');
  static Color get yellow => _getColorFromHex('#f5ce28');
  static Color get lightblue => _getColorFromHex('#43c0f6');

  Color primaryTextColor = Colors.black;

  //convert colors to 0x format
  static Color _getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }

  //default theme
  static get theme {
    return ThemeData(
        appBarTheme: AppBarTheme(brightness: Brightness.light));
  }

  //dark theme
  static get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Colors.black,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        indicatorColor: Colors.white,
        canvasColor: Colors.black,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.dark));
  }
}
