import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;

import 'package:json_training/models/photo_model.dart';


Future<String> loadjson() async {
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhoto() async {
  final jsonString = await loadjson();
  final jsonResponse = json.decode(jsonString);

  PhotoList photoList = PhotoList.fromJson(jsonResponse);
  print(photoList.photos[0].title);
}