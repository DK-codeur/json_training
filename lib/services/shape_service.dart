import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;

import 'package:json_training/models/shape_model.dart';


Future<String> loadJson() async {
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShape() async {
  final jsonString = await loadJson();
  final jsonResponse = json.decode(jsonString); 

  Shape shape = Shape.fromJson(jsonResponse);
  debugPrint('${shape.property.height}');
}