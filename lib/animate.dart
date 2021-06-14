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
          title: Text('Animate', style: Theme.of(context).textTheme.headline3),
        ),
        // TODO Add floatingButton with Icon.add in white and wrap Column in Animated opacity and check buttonClicked. Create function for buttonClicked.
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
            child: Center(
              child: Image.asset(
                'assets/pics/cuckoo.png',
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "Everything fades away eventually....",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "And returns.",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "And fades.",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "And returns.",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "And fades.",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "Ah whatever...",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ]));
  }
}
