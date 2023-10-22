import 'package:flutter/material.dart';

class GridRoute extends StatefulWidget {
  const GridRoute({Key? key}) : super(key: key);

  @override
  _GridRouteState createState() => _GridRouteState();
}

class _GridRouteState extends State<GridRoute> {
  // TODO Suche dir ein paar eigene Icons aus und füge sie der Liste hinzu
  List<IconData> myList = [
    Icons.add_location,
    Icons.add_location_alt,
    Icons.add_location_alt_outlined,
    Icons.add_location_alt_rounded,
    Icons.add_location_alt_sharp,
    Icons.add_location_outlined,
    Icons.add_location_sharp,
    Icons.add_location_rounded
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Listview",
                style: Theme.of(context).textTheme.displayMedium)),
        body: Column(
          children: <Widget>[
            // TODO Wrappe das Text-Widget in ein Padding-Widget und definiere einen top- und bottom-Abstand von 50 und 30 Pixeln
            Text("My Gridview Header",
                style: Theme.of(context).textTheme.displayMedium),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                // TODO Spiel mit den Werten des Grids herum und schau dir die Auswirkungen auf dem Emulator an
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: myList.length,
                    itemBuilder: (context, i) {
                      return Card(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridTile(
                            child: Icon(myList[i],
                                color: Colors.white, size: 40.0),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ));
  }
}
