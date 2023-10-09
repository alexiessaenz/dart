import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> colorThemes = [  //private _atributes ex. _colorThemes
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
class AppTheme {
  final int selectedColor;
  bool isDarkmode;

  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
      : assert(selectedColor >= 0 && selectedColor <= colorThemes.length,
            'Colors must be between 0 and ${colorThemes.length - 1}');

  ThemeData getTheme() => ThemeData(
        appBarTheme: _appBarTheme(),
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: colorThemes[selectedColor],
        //colorScheme: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]),
        // brightness: Brightness.dark,
      );

  ThemeData darkTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      highlightColor: Colors.black.withOpacity(0.5),
      splashColor: colorThemes[selectedColor],
      appBarTheme: _appBarTheme(),
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectedColor],
      brightness: Brightness.dark,
    );
  }

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
      centerTitle: false,
      backgroundColor:
          ColorScheme.fromSeed(seedColor: colorThemes[selectedColor])
              .primary
              .withOpacity(0.5),
      //backgroundColor: ,//ColorScheme.fromSeed(seedColor: c).primary.withOpacity(0.0),
      //foregroundColor: ColorScheme.fromSeed(seedColor: _colorThemes[selectedColor]).onPrimary,
      titleTextStyle: TextStyle(
        color: ColorScheme.fromSeed(seedColor: colorThemes[selectedColor])
            .primary,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  AppTheme copyWith({int? selectedColor, bool? isDarkmode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkmode: isDarkmode ?? this.isDarkmode,
      );
}
