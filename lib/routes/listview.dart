import 'dart:io' show Platform;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuckoo_workshop_start/model/superhero.dart';
import 'package:cuckoo_workshop_start/repository/superhero_service.dart';
import 'package:cuckoo_workshop_start/widgets/cuckoo_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewRoute extends StatefulWidget {
  const ListviewRoute({Key? key}) : super(key: key);

  @override
  _ListviewRouteState createState() => _ListviewRouteState();
}

class _ListviewRouteState extends State<ListviewRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Listview", style: Theme.of(context).textTheme.headline3)),
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
        child: FutureBuilder(
            future: SuperHeroService().readFromDB(),
            builder: (BuildContext buildContext, AsyncSnapshot<List<SuperHero>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                return ListView.builder(
                  itemCount: (snapshot.data)!.length,
                  itemBuilder: (context, i) {
                    return Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListTile(
                        leading: Image.network((snapshot.data)![i].portrait),
                        title: Text((snapshot.data)![i].name),
                        subtitle: Text((snapshot.data)![i].skill),
                        trailing: Text("Strength: ${(snapshot.data)![i].strength}"),
                      ),
                    );
                  }
                );
              } else {
                return Center(
                  // Display Progress Indicator
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
              }
            }),
      ),

    );
  }
}
