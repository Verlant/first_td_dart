import 'package:firstd/bande_dessinee.dart';

void main(List<String> arguments) {
  final data = [
    {'isbn': '2-86889-006-7', 'titre': 'Thorgal: La galère noire', 'dateParution': '23/10/2014', 'auteur': 'Van Hamme', 'scenariste': 'Rosinsky'},
    {'isbn': '2-56784-015-2', 'titre': 'Astérix en Corse', 'dateParution': '04/01/1973', 'auteur': 'Albert Uderzo', 'scenariste': 'René Goscinny'}
  ];

  for (var d in data) {
    final livre = BandeDessinee.fromJson(d);
    print(livre.description());
  }
}
