import 'package:flutter/material.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => new _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('register'),
              ],
            ),
          )),
    );
  }
}
