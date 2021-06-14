import 'package:flutter/material.dart';

class ListviewRoute extends StatefulWidget {
  const ListviewRoute({Key? key}) : super(key: key);

  @override
  _ListviewRouteState createState() => _ListviewRouteState();
}

class _ListviewRouteState extends State<ListviewRoute> {
  //TODO Define String list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Listview", style: Theme.of(context).textTheme.headline3)
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
            child: Text("My Listview Header", style: Theme.of(context).textTheme.headline4),
          ),
          // TODO Add Listview wrapped in Expanded. Then extract Card Listtiles, Icons.emoji_emotions_sharp
        ]
      ),
    );
  }
}
