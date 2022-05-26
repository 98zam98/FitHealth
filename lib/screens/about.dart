import 'package:flutter/material.dart';
import '../Content/AppFooterWidget.dart';
import '../Content/myspace.dart';
                //new myspace(),

class about extends StatefulWidget {
  @override
  _aboutState createState() => new _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(
                  'About Us',
                  style: Theme.of(context).textTheme.headline5,
                ),
                new myspace(),
                new Text(
                  'The best investment you will ever make is your own health',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                new myspace(),
                new Text(
                  'Who we are',
                  style: Theme.of(context).textTheme.headline6,
                ),
                new Text(
                  'Omar , Mahmoud , Zyad and Gehad',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new myspace(),
                new Text(
                  'Our goal',
                  style: Theme.of(context).textTheme.headline6,
                ),
                new Text(
                  'we want to improve the general health and well being of the individuals and continue supporting them with trainning courses and expert advice in our community and Egypt in general .',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                new myspace(),
                new Text(
                  'Facilities',
                  style: Theme.of(context).textTheme.headline6,
                ),
                new Text(
                  'Cardio section',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Strength Training',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Home Training',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Aerobics',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Customized Schedule Cards',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                new Text(
                  'Diet Counseling',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Spa (Shower Room)',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Locker Room',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                new Text(
                  'Health Bar ( Serving Protein Shakes, Fat Burners & other Nutrition )',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                new myspace(),
                new AppFooterWidget(),
              ],
            ),
          )),
    );
  }
}
