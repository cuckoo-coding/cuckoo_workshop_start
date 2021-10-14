
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cuckoo_workshop_start/model/superhero.dart';

class SuperHeroService {

  Future<List<SuperHero>> readFromDB() async {
    List<SuperHero> superheroes = [];

    await FirebaseFirestore.instance
        .collection('superheroes')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        superheroes.add(SuperHero(
          name: doc['name'],
          portrait: doc['portrait'],
          skill: doc['skill'],
          strength: doc['strength'],));
      });
    });

    return superheroes;
  }
}
