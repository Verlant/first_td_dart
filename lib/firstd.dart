import 'package:firstd/moteur.dart';
import 'package:firstd/voiture.dart';
import 'package:firstd/energie.dart';

void main(List<String> arguments) {
  var moteurGazole = Moteur(cylindree: 10, puissance: 10, energie: Energie.Gazole);
  var moteurEssence = Moteur(cylindree: 10, puissance: 10);
  var moteurElectrique = Moteur(cylindree: 10, puissance: 10, energie: Energie.Electrique);

  List<Voiture> voitures = [
    Voiture(immatriculation: 'AA-111-AA', modele: '208', prixHT: 20000, moteur: moteurGazole),
    Voiture(immatriculation: 'BB-222-BB', modele: '308', prixHT: 32000, moteur: moteurEssence),
    Voiture(immatriculation: 'CC-333-CC', modele: '3008', prixHT: 40000, moteur: moteurElectrique),
    Voiture(immatriculation: 'DD-444-DD', modele: 'A4', prixHT: 42000, moteur: moteurGazole),
    Voiture(immatriculation: 'EE-555-EE', modele: 'SQ5', prixHT: 72000, moteur: moteurEssence),
    Voiture(immatriculation: 'FF-666-FF', modele: 'Logan', prixHT: 8200, moteur: moteurElectrique),
    Voiture(immatriculation: 'GG-777-GG', modele: 'Mustang', prixHT: 48000, moteur: moteurGazole),
  ];


  var totalHT = 0.00;
  for(Voiture voiture in voitures) {
    print(voiture.toJson());
    totalHT += voiture.prixHT;
  }
  print("Le total HT de toutes les voitures est de $totalHT");
  voitures.forEach((voiture) {
    if (voiture.moteur.energie == Energie.Electrique) print(voiture.toJson());
  });
}