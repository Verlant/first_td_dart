import 'package:firstd/volume.dart';
import 'package:intl/intl.dart';

class BandeDessinee extends Volume {
  String scenariste;

  BandeDessinee({required this.scenariste, required super.auteur, required super.isbn, required super.titre, required super.dateParution});

  BandeDessinee.fromJson(Map<String, dynamic> json)
      : scenariste = json['scenariste'] as String,
        super.fromJson(json);

  Map<String, dynamic> description() => {
        "isbn": isbn,
        "titre": titre,
        "dateParution": DateFormat('dd/MM/yyy').format(dateParution),
        "auteur": auteur,
        "scenariste": scenariste,
      };

  String getScenariste() {
    return scenariste;
  }
}
