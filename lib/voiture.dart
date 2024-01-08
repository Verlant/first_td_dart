import 'package:firstd/moteur.dart';

class Voiture {
  String immatriculation;
  String modele;
  double prixHT;
  int    nbPortes;
  Moteur moteur;

  Voiture({
    required this.immatriculation,
    required this.modele,
    required this.prixHT,
    required this.moteur,
    this.nbPortes = 4
  });

  @override
  String toString() => {
      "immatriculation": this.immatriculation,
      "modele": this.modele,
      "prixHT": this.prixHT,
      "nbPortes": this.nbPortes,
      "moteur": this.moteur.toString(),
    }.toString();

  Map<String, dynamic> toJson() => {
    "immatriculation": this.immatriculation,
    "modele": this.modele,
    "prixHT": this.prixHT,
    "nbPortes": this.nbPortes,
    "moteur": this.moteur.toJson(),
  };
}