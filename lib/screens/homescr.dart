import 'package:flutter/material.dart';
import '../Content/AppFooterWidget.dart';
import '../Content/myspace.dart';
import '../themes/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<int> imgList = [
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,

];

final List<Widget> imageSliders = imgList
    .map(
      (item) => ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Image.asset(
          'assets/img/homescr/${item}.jpg',
          fit: BoxFit.cover,
          width: 1000.0,
        ),
      ),
    )
    .toList();

class homescr extends StatefulWidget {
  @override
  _homescrState createState() => new _homescrState();
}

class _homescrState extends State<homescr> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Card(
                    color: color3,
                    child: new Column(children: [
                      new myspace(),
                      Container(
                        child: CarouselSlider(
                          items: imageSliders,
                          carouselController: _controller,
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                      ),
                      //new myspace(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(_current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                      new myspace(),
                    ])),
                new myspace(),
                new Card(
                  color: color3,
                  child: new Container(
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Text(
                            'Packages',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        new Text(
                          'This is your Destination for Acheiving your Goals.',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        new myspace(),
                        new Align(
                          alignment: Alignment.bottomLeft,
                          child: new FlatButton(
                            //onPressed: _loginB,
                            child: new Text(
                              'View Details',
                              //style: Theme.of(context).textTheme.bodyText1,
                              style: TextStyle(color: color5),
                            ),
                            textColor: color5,
                            shape: RoundedRectangleBorder(side: BorderSide(color: color5, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new myspace(),
                new Card(
                  color: color3,
                  child: new Container(
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.topLeft,
                          child: new Text(
                            'Facilities',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        new Text(
                          'We Provide What You need to Be better than Before.',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        new myspace(),
                        new Align(
                          alignment: Alignment.bottomLeft,
                          child: new FlatButton(
                            //onPressed: _loginB,
                            child: new Text(
                              'View Details',
                              //style: Theme.of(context).textTheme.bodyText1,
                              style: TextStyle(color: color5),
                            ),
                            textColor: color5,
                            shape: RoundedRectangleBorder(side: BorderSide(color: color5, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
                          ),
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

/**


                new Text(
                  'contact',
                  style: Theme.of(context).textTheme.headline5,
                ),
                new myspace(),
                new Card(
                  color: color3,
                  child: new Container(),
                ),
                new myspace(),
                


                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================





                
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[],
                    ),
                  












                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================

                ====
                =================================================================

























                  
                        new Text(
                          'Steve P. Vance',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        new myspace(),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'Phone no: ',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              '312-373-0439',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                        new myspace(),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'Email:',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            new Text(
                              'StevePVance@dayrep.com',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                      

                 */
