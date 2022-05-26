import 'package:flutter/material.dart';
import '../Content/AppFooterWidget.dart';
import '../Content/myspace.dart';
import '../themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> programsList = [
  'Facilities',
  'Diet',
  'Calories',
];

class programs extends StatefulWidget {
  @override
  _programsState createState() => new _programsState();
}

class _programsState extends State<programs> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              height: height,
              viewportFraction: 1.0,
              //enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: programsList
                .map((item) => Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/programs${programsList.indexOf(item)}.jpg',
                          fit: BoxFit.cover,
                          height: height,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: new FlatButton(
                              onPressed: () {
                                print('programs');
                              },
                              child: new Container(
                                padding: new EdgeInsets.all(12.0),
                                child: new Text(
                                  item,
                                  //style: Theme.of(context).textTheme.bodyText1,
                                  style: TextStyle(color: color5, fontSize: 25),
                                ),
                              ),
                              color: color8,
                              shape: RoundedRectangleBorder(side: BorderSide(color: color5, width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ))
                .toList(),

            /*
            imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
                */
          );
        },
      ),
    );
  }
}

/*


class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

================================================
================================================


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('programs'),
                new AppFooterWidget(),
              ],
            ),
          )),
    );
  }

 */
