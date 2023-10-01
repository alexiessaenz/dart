import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes =[
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

final int selectedColor=_colorThemes.indexOf(_customColor);

class AppTheme{
final int selectedColor;
  AppTheme({this.selectedColor = 0}) 
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
      'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      appBarTheme: _appBarTheme(),
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }

  ThemeData darkTheme(){
    return ThemeData(
      appBarTheme: _appBarTheme(),
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark,
    );
  }


AppBarTheme _appBarTheme(){
  return AppBarTheme(
    backgroundColor: _customColor,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
}