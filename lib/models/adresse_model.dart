

class Adresse {
  final String city;
  final List<String> streets;

  Adresse({this.city, this.streets});

  factory Adresse.fromJson(Map<String, dynamic> myjson) {

    var streetsFromJson = myjson['streets'];
    List<String> streetsList = List<String>.from(streetsFromJson);

    return Adresse(
      city: myjson['city'],
      streets: streetsList
    );
  }
}