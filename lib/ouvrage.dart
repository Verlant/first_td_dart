class Ouvrage {
  String isbn;
  String titre;
  DateTime dateParution;

  Ouvrage({required this.isbn, required this.titre, required this.dateParution});

  Ouvrage.fromJson(Map<String, dynamic> json)
      : isbn = json['scenariste'] as String,
        titre = json['titre'] as String,
        dateParution =
            DateTime(int.parse(json['dateParution'].split('/')[2]), int.parse(json['dateParution'].split('/')[1]), int.parse(json['dateParution'].split('/')[0]));

  String getIsbn() {
    return isbn;
  }

  String getTitre() {
    return titre;
  }

  DateTime getDateParution() {
    return dateParution;
  }
}
