import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 5})
    : assert(selectedColor >=0, 'se;ected color must bbe greater then 0'),
      assert(selectedColor < colorList.length,
       'se;ected color must be less or equal  than  ${colorList.length -1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor] ,
  appBarTheme:  const  AppBarTheme(
    centerTitle: false,
  )

  );
}
