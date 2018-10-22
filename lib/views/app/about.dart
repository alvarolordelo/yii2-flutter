import 'package:flutter/material.dart';
import '../layout/nav-menu.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54, title: Text('Yii Flutter')),
      drawer: NavMenu.menuGuest(context),//render the navigation menu according to user
      body: Material(
          color: Colors.white30,
          child: Center(
            child: Text(
              'About',
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

// class *Index extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Guarda Nota',
//       home: Scaffold(
//           drawer: Drawer(
//             child: ListView(
//               children: <Widget>[
//                 ListTile(
//                   title: Text('MENU'),
//                   trailing: Icon(Icons.close),
//                   onTap: (){
//                     var s = Navigator.canPop(context);
//                     debugPrint('clicked {$s}');
//                   },
//                 ),
//               ],
//             ),
//           ),
//           appBar: AppBar(
//             title: Text('Guarda Nota'),
//           ),
//           body: Material(
//         color: Colors.lightBlueAccent,
//         child: Center(
//           child: Text(
//             'Guarda Nota (NFe)',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(color: Colors.white, fontSize: 30.0, fontStyle: FontStyle.italic),
//           ),
//         ))),
//     );
//   }
// }
