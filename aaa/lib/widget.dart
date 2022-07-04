import 'package:flutter/material.dart';
import 'models/jsonRead.dart';
import 'screens/menu.dart';

class Catalog extends StatelessWidget {

  const Catalog({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ReadJsonData();


    return const MaterialApp(
        home: MenuScreen());
    }
}

