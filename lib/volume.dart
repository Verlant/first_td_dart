import 'package:firstd/ouvrage.dart';

class Volume extends Ouvrage {
  String auteur;

  Volume({required this.auteur, required super.isbn, required super.titre, required super.dateParution});

  Volume.fromJson(Map<String, dynamic> json)
      : auteur = json['scenariste'] as String,
        super.fromJson(json);

  String getAuteur() {
    return auteur;
  }
}
