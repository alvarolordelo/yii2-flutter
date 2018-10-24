import 'package:flutter/material.dart';
//views
import '../views/app/index.dart';
import '../views/app/about.dart';
import '../views/app/login.dart';
//model
import '../models/login-form-model.dart';

class AppController extends StatefulWidget {
  _AppControllerState createState() => _AppControllerState();

  //defines the index action to app controller class
  actionIndex() {
    return Index();
  }

  actionAbout() {
    return About();
  }

   actionLogin() {
    var model = LoginForm();
    
    //need to pass the model to loginView widget
    //return Login(model);
    return Login();
  }

  actionRegister() {}
}

class _AppControllerState extends State<AppController> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
