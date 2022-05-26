import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => new _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new AppBar(
          automaticallyImplyLeading: false, // this will hide Drawer hamburger icon
          actions: <Widget>[
            Container()
          ], // this will hide endDrawer hamburger icon

          title: new Text('Login'),
        ),

        new Card(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(labelText: 'username:', hintText: 'username', icon: new Icon(Icons.people)),
                  autocorrect: false,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  onChanged: null, // _username_onChange,
                  onSubmitted: null,
                ),
                new TextField(
                  decoration: new InputDecoration(
                    labelText: 'password:',
                    hintText: 'password',
                    icon: new Icon(Icons.security),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        //color: this._showPassword ? Colors.blue : Colors.grey,
                      ),
                      //onPressed: () {setState(() => this._showPassword = !this._showPassword);},
                    ),
                  ),
                  //obscureText: !this._showPassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  onChanged: null, //_pass_onChange,
                  onSubmitted: null,
                ),
              ],
            ),
          ),
        ),
        new FlatButton(
          //onPressed: _loginB,
          child: new Text('login'),
        ),
        // ---------------------------------------------

        new Card(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Column(
              children: <Widget>[
                new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/help/login');
                  },
                  child: new Text('need help?'),
                ),
                new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/forgot');
                  },
                  child: new Text('forgot password ?'),
                ),
              ],
            ),
          ),
        ),
        new Text('not a member yet?'),
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/register');
          },
          child: new Text('register'),
        ),

/*
        new Text('or continue with:'),
        



        new Card(
          child: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Row(
              children: <Widget>[
                new FlatButton(
                  //onPressed: _loginB,
                  child: new Text('G'),
                ),
                new FlatButton(
                  //onPressed: _loginB,
                  child: new Text('F'),
                ),
                new FlatButton(
                  //onPressed: _loginB,
                  child: new Text('t'),
                ),
              ],
            ),
          ),
        ),
        */
      ],
    );
  }
}

/*
child:

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new AppBar(
              automaticallyImplyLeading: false, // this will hide Drawer hamburger icon
              actions: <Widget>[
                Container()
              ], // this will hide endDrawer hamburger icon

              title: new Text('Login'),
            ),
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(labelText: 'username:', hintText: 'username', icon: new Icon(Icons.people)),
                      autocorrect: false,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      onChanged: null, // _username_onChange,
                      onSubmitted: null,
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                        labelText: 'password:',
                        hintText: 'password',
                        icon: new Icon(Icons.security),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            //color: this._showPassword ? Colors.blue : Colors.grey,
                          ),
                          //onPressed: () {setState(() => this._showPassword = !this._showPassword);},
                        ),
                      ),
                      //obscureText: !this._showPassword,
                      enableSuggestions: false,
                      autocorrect: false,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      onChanged: null, //_pass_onChange,
                      onSubmitted: null,
                    ),
                  ],
                ),
              ),
            ),
            new FlatButton(
              //onPressed: _loginB,
              child: new Text('login'),
            ),
            // ---------------------------------------------

            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/help/login');
                      },
                      child: new Text('need help?'),
                    ),
                    new FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/forgot');
                      },
                      child: new Text('forgot password ?'),
                    ),
                  ],
                ),
              ),
            ),
            new Text('not a member yet?'),
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: new Text('register'),
            ),
            new Text('or continue with:'),
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Row(
                  children: <Widget>[
                    new FlatButton(
                      //onPressed: _loginB,
                      child: new Text('G'),
                    ),
                    new FlatButton(
                      //onPressed: _loginB,
                      child: new Text('F'),
                    ),
                    new FlatButton(
                      //onPressed: _loginB,
                      child: new Text('t'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ), 

===========================================================
===========================================================
===========================================================
===========================================================
===========================================================
===========================================================
===========================================================
===========================================================
===========================================================


        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new AppBar(
              automaticallyImplyLeading: false, // this will hide Drawer hamburger icon
              actions: <Widget>[
                Container()
              ], // this will hide endDrawer hamburger icon

              title: new Text('Login'),
            ),
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(labelText: 'username:', hintText: 'username', icon: new Icon(Icons.people)),
                      autocorrect: false,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      onChanged: null, // _username_onChange,
                      onSubmitted: null,
                    ),
                    new TextField(
                      decoration: new InputDecoration(
                        labelText: 'password:',
                        hintText: 'password',
                        icon: new Icon(Icons.security),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            //color: this._showPassword ? Colors.blue : Colors.grey,
                          ),
                          //onPressed: () {setState(() => this._showPassword = !this._showPassword);},
                        ),
                      ),
                      //obscureText: !this._showPassword,
                      enableSuggestions: false,
                      autocorrect: false,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      onChanged: null, //_pass_onChange,
                      onSubmitted: null,
                    ),
                  ],
                ),
              ),
            ),
            new FlatButton(
              //onPressed: _loginB,
              child: new Text('login'),
            ),
            // ---------------------------------------------

          ],
        ), 



*/
