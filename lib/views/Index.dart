import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.black54, title: Text('Yii Flutter')),
      drawer: Drawer(
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
              title: Text('About'),
              trailing: Icon(Icons.info_outline),
              onTap: () {},
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
                
              },
            ),
          ],
        ),
      ),
      body: Material(
          color: Colors.white30,
          child: Center(
            child: Text(
              'Congratulations!',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontStyle: FontStyle.italic),
            ),
          )),
    );
  }
}