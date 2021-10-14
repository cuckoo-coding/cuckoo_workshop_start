import 'package:cuckoo_workshop_start/widgets/cuckoo_image.dart';
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
        title: Text('Menu', style: Theme.of(context).textTheme.headline3),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CuckooImage(),
            _buildMenuItem("Listview", "/listview"),
            _buildMenuItem("Grid", "/grid"),
            _buildMenuItem("Animate", "/animate"),
            _buildMenuItem("Transform", "/transform"),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String path) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
