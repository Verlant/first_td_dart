import 'package:firstd/moteur.dart';

class Voiture {
  String immatriculation;
  String modele;
  double prixHT;
  int nbPortes;
  Moteur moteur;

  Voiture({required this.immatriculation, required this.modele, required this.prixHT, required this.moteur, this.nbPortes = 4});

  @override
  String toString() => {
        "immatriculation": immatriculation,
        "modele": modele,
        "prixHT": prixHT,
        "nbPortes": nbPortes,
        "moteur": moteur.toString(),
      }.toString();

  Map<String, dynamic> toJson() => {
        "immatriculation": immatriculation,
        "modele": modele,
        "prixHT": prixHT,
        "nbPortes": nbPortes,
        "moteur": moteur.toJson(),
      };
}
