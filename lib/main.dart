import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/register.dart';
import './themes/themes.dart';

void main() {
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      //All available pages
      '/Home': (BuildContext contrext) => new Home(),
      '/register': (BuildContext contrext) => new register(),
    },
    title: 'FitHealth',
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: CustomTheme.lightTheme,
  ));
}
