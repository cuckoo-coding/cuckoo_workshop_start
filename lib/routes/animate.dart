import 'package:flutter/material.dart';

class AnimateRoute extends StatefulWidget {
  const AnimateRoute({Key? key}) : super(key: key);

  @override
  _AnimateRouteState createState() => _AnimateRouteState();
}

class _AnimateRouteState extends State<AnimateRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            Text('Animate', style: Theme.of(context).textTheme.displayMedium),
      ),
      // TODO Wrappe die Column in ein AnimatedOpacity-Widget
      body: Column(children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
          child: Center(
            child: Image.asset(
              'assets/pics/cuckoo.png',
              width: MediaQuery.sizeOf(context).width / 2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          "Everything fades away eventually....",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "And returns.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "And fades.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "And returns.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "And fades.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "Ah whatever...",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        //TODO  Definiere eine Variable buttonClicked, switche den Wert der Variablen bei Aufruf dieser Funktion um anzuzeigen, ob der Button geklickt wurde
        onPressed: () {},
        tooltip: 'Animation',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
