import 'package:flutter/material.dart';
import '../Content/AppFooterWidget.dart';
import '../Content/myspace.dart';
import '../themes/themes.dart';

class contact extends StatefulWidget {
  @override
  _contactState createState() => new _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(
                  'contact',
                  style: Theme.of(context).textTheme.headline5,
                ),
                new myspace(),
                new Card(
                  color: color3,
                  child: new Container(
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'FitHealth CO',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        new myspace(),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'Phone no',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              ':',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              '0402XXXXX',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                        new myspace(),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'Email',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              ':',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              'FitHealth@FitHealth.com',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                      ],
                    ),
                  ),
                ),
                new myspace(),
                new AppFooterWidget(),
              ],
            ),
          )),
    );
  }
}
