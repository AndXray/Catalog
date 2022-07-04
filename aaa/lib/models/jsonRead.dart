import 'dart:convert';
import 'package:flutter/services.dart';
import 'dish.dart';


// ignore: non_constant_identifier_names
Future<List<Dish>> ReadJsonData() async {
  final jsondata = await rootBundle.loadString('assets/files/data.json');
  final list = json.decode(jsondata) as List<dynamic>;
  //print(list);
  return list.map((e) => Dish.fromJson(e)).toList();
}
