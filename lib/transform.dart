import 'dart:math';
import 'package:flutter/material.dart';

class TransformRoute extends StatefulWidget {
  @override
  _TransformRouteState createState() => _TransformRouteState();
}

class _TransformRouteState extends State<TransformRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Transform', style: Theme.of(context).textTheme.headline3),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
            child: Image.asset(
              'assets/pics/cuckoo.png',
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.cover,
            ),
          ),
      ]),
    );
  }
}
