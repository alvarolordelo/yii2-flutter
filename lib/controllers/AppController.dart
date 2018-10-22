import 'package:flutter/material.dart';
import '../views/app/index.dart';
import '../views/app/about.dart';

class AppController extends StatefulWidget {
  _AppControllerState createState() => _AppControllerState();

  //defines the index action to app controller class
  actionIndex() {
    return Index();
  }

  actionAbout() {
    return About();
  }

  actionLogin() {}

  actionRegister() {}
}

class _AppControllerState extends State<AppController> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
