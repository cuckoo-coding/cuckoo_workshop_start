import 'package:flutter/material.dart';

import 'package:cuckoo_workshop_start/utilities/custom_colors.dart';
import 'package:cuckoo_workshop_start/routes/home.dart';
import 'package:cuckoo_workshop_start/routes/listview.dart';
import 'package:cuckoo_workshop_start/routes/grid.dart';
import 'package:cuckoo_workshop_start/routes/animate.dart';
import 'package:cuckoo_workshop_start/routes/transform.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuckoo Workshop',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF00F8AD, CustomColors.neonGreenMaterialSwatch),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 50.0, fontFamily: 'Pangram-Black', color: Colors.black),
          headline2: TextStyle(fontSize: 50.0, fontFamily: 'Pangram-Black', color: Colors.white),
          headline3: TextStyle(fontSize: 30.0, fontFamily: 'Pangram-Black', color: Colors.black),
          headline4: TextStyle(fontSize: 30.0, fontFamily: 'Pangram-Black', color: Colors.white),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.white),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.black),
          subtitle1: TextStyle(fontSize: 16.0, fontFamily: 'OverpassMono', color: Colors.black),
          subtitle2: TextStyle(fontSize: 14.0, fontFamily: 'OverpassMono', color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeRoute(),
        '/listview': (context) => ListviewRoute(),
        '/grid': (context) => GridRoute(),
        '/animate': (context) => AnimateRoute(),
        '/transform': (context) => TransformRoute(),
      },
    );
  }
}

