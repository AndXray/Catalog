
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, this.name, this.price, this.description, this.image}) : super(key: key);

  final name;
  final price;
  final description;
  final image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Подробности', style: TextStyle(
          fontSize: 30.0,
        )),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Image.asset(image),
          ),
          Align(
            child: Text(name, maxLines: 2, style: TextStyle(
                fontSize: 25,
                fontFamily: "BebasNeue",
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
                letterSpacing: 2),),),
          Align(
            alignment: Alignment.center,
            child: Text(description, style: const TextStyle(
              fontSize: 20,
              letterSpacing: 1.5,
              fontStyle: FontStyle.italic,

            ),),
          ),
          Align(
            child: Container(
              alignment: Alignment.center,
              child: Text('$price ₽',
                style: const TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.5,
                    color: Colors.black
                ),),
            ),),
        ],
      ),
    );
  }
}
