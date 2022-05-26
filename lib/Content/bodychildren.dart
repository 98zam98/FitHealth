//bodychildren.dart

import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import '../themes/themes.dart';
import '../screens/register.dart';
import '../screens/homescr.dart';
import '../screens/package.dart';
import '../screens/programs.dart';
import '../screens/about.dart';
import '../screens/contact.dart';

//import '../screens/drawer.dart';

///    homescr       package    programs     about     contact

final List<Widget> bodychildren = [
  homescr(),
  package(),
  programs(),
  about(),
  contact(),
];
