import 'package:flutter/material.dart';

class NavMenu {
  static menuGuest(context) {
    var drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Menu'),
            trailing: Icon(Icons.close),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('About'),
            trailing: Icon(Icons.info_outline),
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          ListTile(
            title: Text('Login/Register'),
            trailing: Icon(Icons.input),
            onTap: () {},
          ),
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.language),
            onTap: () {
              _showLanguageDialog(context);
            },
          ),
        ],
      ),
    );
    return drawer;
  }

  static menuUser(context) {
    var drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Menu'),
            trailing: Icon(Icons.close),
            onTap: () {
              bool s = Navigator.canPop(context);
              if (s) {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            trailing: Icon(Icons.remove_red_eye),
            onTap: () {},
          ),
        ],
      ),
    );
    return drawer;
  }

  static menuAdmin(context) {
    var drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Menu'),
            trailing: Icon(Icons.close),
            onTap: () {
              bool s = Navigator.canPop(context);
              if (s) {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            trailing: Icon(Icons.remove_red_eye),
            onTap: () {},
          ),
        ],
      ),
    );
    return drawer;
  }

  static void _showLanguageDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Preferred Language"),
          content: ListView(
            children: <Widget>[
              ListTile(
                title: Text('English'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                title: Text('Portuguese'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                title: Text('Spanish'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                title: Text('Chinese'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              child: Text(
                'close',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
