
class Student {
  final String id;
  final String nom;
  final int partition;

  Student({this.id, this.nom, this.partition});

  factory Student.fromJson(Map<String, dynamic> myjson) {
    return Student(
      id: myjson['id'],
      nom: myjson['nom'],
      partition: myjson['partition']
    );
  }

}