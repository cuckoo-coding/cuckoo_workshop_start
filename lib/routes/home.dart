import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Menu', style: Theme.of(context).textTheme.displaySmall),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
            child: Image.asset(
              'assets/pics/cuckoo.png',
              width: MediaQuery.sizeOf(context).width / 2,
              fit: BoxFit.cover,
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  child: Text(
                    'Listview',
                    style: Theme.of(context).textTheme.displayLarge,
                  )),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                child: Text(
                  'Grid',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                child: Text(
                  'Animate',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                child: Text(
                  'Transform',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
