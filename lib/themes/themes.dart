import 'package:flutter/material.dart';

// #333 header
const color1 = Color.fromARGB(255, 51, 51, 51);

// 999 header title
const color2 = Color.fromARGB(255, 153, 153, 153);

// eee slider background
const color3 = Color.fromARGB(255, 238, 238, 238);

// 666 choices
const color4 = Color.fromARGB(255, 102, 102, 102);

// #428bca   blue
const color5 = Color.fromARGB(255, 66, 139, 202);

// #5cb85c green solid
const color6 = Color.fromARGB(255, 92, 184, 92);

// #4cae4c green border
const color7 = Color.fromARGB(255, 76, 174, 76);

// eee slider background
const color8 = Color.fromARGB(200, 238, 238, 238);

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  ThemeMode get currentTheme => ThemeMode.light;

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: color1,
      accentColor: color2,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline5: TextStyle(color: color5),
        headline6: TextStyle(color: color1),
        bodyText1: TextStyle(color: color1),
      ),
    );
  }
}
