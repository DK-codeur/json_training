import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;

import 'package:json_training/models/product_model.dart';

Future<String> loadJson() async {
  return await rootBundle.loadString('assets/product.json');
}

Future loadProduct() async {
  final jsonString = await loadJson();
  final jsonResponse = json.decode(jsonString);

  Product product = Product.fromJson(jsonResponse);
  print(product.name);
}
