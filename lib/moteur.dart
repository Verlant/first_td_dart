import 'package:firstd/energie.dart';

class Moteur {
  int cylindree;
  int puissance;
  Energie energie;

  Moteur({
    required this.cylindree,
    required this.puissance,
    this.energie = Energie.essence,
  });

  @override
  String toString() => {
        "cylindree": cylindree,
        "puissance": puissance,
        "energie": energie,
      }.toString();

  Map<String, dynamic> toJson() => {
        "cylindree": cylindree,
        "puissance": puissance,
        "energie": energie,
      };
}
