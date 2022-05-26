import 'package:flutter/material.dart';
import '../info/info.dart';
import '../Content/placeholder_widget.dart';
import '../Content/bodychildren.dart';
import '../Nav/NavNames.dart';
import '../Nav/NavIcons.dart';
import '../themes/themes.dart';
import '../screens/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          AppName,
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      drawer: new Drawer(child: drawer()),
      body: bodychildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: color1,
        selectedItemColor: Colors.white,
        unselectedItemColor: color2,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: NavIcons[0],
            title: Text(NavNames[0]),
          ),
          new BottomNavigationBarItem(
            icon: NavIcons[1],
            title: Text(NavNames[1]),
          ),
          new BottomNavigationBarItem(
            icon: NavIcons[2],
            title: Text(NavNames[2]),
          ),
          new BottomNavigationBarItem(
            icon: NavIcons[3],
            title: Text(NavNames[3]),
          ),
          new BottomNavigationBarItem(
            icon: NavIcons[4],
            title: Text(NavNames[4]),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
