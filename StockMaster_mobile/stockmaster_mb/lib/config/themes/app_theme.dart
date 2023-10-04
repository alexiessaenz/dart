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

//final int selectedColor = 0;
//final c = _colorThemes[selectedColor];
class AppTheme{
final int selectedColor;
  AppTheme({this.selectedColor = 0}) 
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
      'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData getTheme() => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: _appBarTheme(),
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //colorScheme: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]),
      // brightness: Brightness.dark,
    );
  

  ThemeData darkTheme(){
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    highlightColor: Colors.black.withOpacity(0.5),
    splashColor: _colorThemes[selectedColor],
      appBarTheme: _appBarTheme(),
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark,
    );
  }


AppBarTheme _appBarTheme(){
  return  AppBarTheme(//surfaceTintColor: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]).inversePrimary,
    backgroundColor:ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]).inversePrimary,
    //backgroundColor: ,//ColorScheme.fromSeed(seedColor: c).primary.withOpacity(0.0),
    //foregroundColor: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]).onPrimary,
    titleTextStyle: TextStyle(
      color: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]).primary,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  );
}
}