import 'package:flutter/material.dart';


class CuckooImage extends StatelessWidget {
  const CuckooImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
      child: Image.asset(
        'assets/pics/cuckoo.png',
        width: MediaQuery.of(context).size.width / 2,
        fit: BoxFit.cover,
      ),
    );
  }
}
