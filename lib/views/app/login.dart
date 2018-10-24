import 'package:flutter/material.dart';
import '../layout/nav-menu.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text('Yii Flutter - Login')),
        drawer: NavMenu.menuGuest(
            context), //render the navigation menu according to user
        body: Container(
          padding: EdgeInsets.all(18.0),
          color: Colors.lightBlueAccent[50],
          child: new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                  validator: (value) =>
                      value.isEmpty ? "Email can't be empty!" : null,
                  onSaved: (value) => _email = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  validator: (value) =>
                      value.isEmpty ? "Password can't be empty!" : null,
                  onSaved: (value) => _password = value,
                  obscureText: true,
                ),
                new RaisedButton(
                  child: new Text('Login'),
                  onPressed: () {
                    // here I'll send to controller or invoque the model methods
                    // model.validate os something like that
                    final form = formKey.currentState;
                    if (form.validate()) {
                      form.save();
                      debugPrint('login action');
                      print('Email: $_email and password: $_password');
                    } else {
                      debugPrint('error on validate');
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
