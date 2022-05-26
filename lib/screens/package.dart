import 'package:flutter/material.dart';
import '../Content/AppFooterWidget.dart';
import '../Content/PackageTable.dart';

class package extends StatefulWidget {
  @override
  _packageState createState() => new _packageState();
}

class _packageState extends State<package> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new PackageTable(),
                new AppFooterWidget(),
              ],
            ),
          )),
    );
  }
}
