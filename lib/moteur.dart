import 'package:firstd/energie.dart';

class Moteur {
  int cylindree;
  int puissance;
  Energie energie;

  Moteur({
    required this.cylindree,
    required this.puissance,
    this.energie = Energie.Essence,
  });

  @override
  String toString() => {
      "cylindree": this.cylindree,
      "puissance": this.puissance,
      "energie": this.energie,
    }.toString();

  Map<String, dynamic> toJson() => {
    "cylindree": this.cylindree,
    "puissance": this.puissance,
    "energie": this.energie,
  };
}