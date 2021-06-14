import 'package:flutter/material.dart';

class GridRoute extends StatefulWidget {
  const GridRoute({Key? key}) : super(key: key);

  @override
  _GridRouteState createState() => _GridRouteState();
}

class _GridRouteState extends State<GridRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listview", style: Theme.of(context).textTheme.headline3)),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
              child: Text("My Gridview Header", style: Theme.of(context).textTheme.headline3),
            ),
            //TODO Create GridView in Expanded and Padding 15
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    gridDelegate:
                        SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150, childAspectRatio: 3 / 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
                    itemBuilder: (context, i) {
                      return GridTile(child: Icon(Icons.emoji_emotions_sharp));
                    }),
              ),
            )
          ],
        ));
  }
}
