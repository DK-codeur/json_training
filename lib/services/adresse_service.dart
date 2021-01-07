import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:json_training/models/adresse_model.dart';


Future loadJson() async {
  return await rootBundle.loadString('assets/adresse.json');
}

Future loadAdresse() async{
  final jsonString = await loadJson();
  final jsonResponse = json.decode(jsonString);

  Adresse adresse = Adresse.fromJson(jsonResponse);
  print(adresse.streets);

}
