import 'package:flutter/material.dart';
import '../info/info.dart';
import '../themes/themes.dart';

class AppFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: Alignment.bottomCenter,
      child: Column(children: <Widget>[
        //new Divider(),
        new SizedBox(
          height: 30.0,
          child: new Center(
            child: new Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 1.5,
              color: color3,
            ),
          ),
        ),
        new Align(
          alignment: Alignment.centerLeft,
          child: new Text(
            AppName,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        new Text(
          AppFooter,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ]),
    );
  }
}
