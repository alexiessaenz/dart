

import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.amber,
  Colors.purple,

];
class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor=0
  }): assert(selectedColor >= 0, 'selected color must be greater then 0'),
      assert(selectedColor < colorList.length, 'selected color must be less or equal than ${colorList.length -1}');

  ThemeData getTheme() => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    highlightColor: Colors.black.withOpacity(0.5),
    splashColor: colorList[selectedColor],
    useMaterial3: true,


    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false)
  );
}