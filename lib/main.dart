import 'package:flutter/material.dart';
import './controllers/AppController.dart';
//import './config/Internationalization.dart';

void main() => runApp(MaterialApp(
      //internalization();
      debugShowCheckedModeBanner: false,
      // Start the app with the "/" named route. In our case, the app will start
      // on the FirstScreen Widget
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => new AppController().actionIndex(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => new AppController().actionAbout(),
      },
    ));
