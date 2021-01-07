import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_training/models/student_model.dart';


//import json file
Future<String> loadJson() async {
  return await rootBundle.loadString('assets/student.json'); 
}

Future loadStudent() async {
  final jsonString = await loadJson();
  final jsonResponse = json.decode(jsonString);

  Student student = Student.fromJson(jsonResponse);
  print(student.nom);
}

