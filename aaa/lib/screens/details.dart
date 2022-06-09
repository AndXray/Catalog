import '../models/dish.dart';
import 'package:flutter/material.dart';
import 'menu.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.name, this.price, this.description, this.image}) : super(key: key);

    final name;
    final price;
    final description;
    final image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Подробности', style: TextStyle(
          fontSize: 30.0,
        )),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: image,
          ),
        Align(
          child: Container(
            child: Text(name, style: TextStyle(
                fontSize: 25,
                fontFamily: "BebasNeue",
                color: Colors.red[800],
                fontWeight: FontWeight.bold,
                letterSpacing: 2),),
          ),),
          Align(
            child: Text(description, style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.5,
              fontStyle: FontStyle.italic,

            ),),
            alignment: Alignment.center,
          ),
          Align(
              child: Container(
                child: Text(price.toString() + ' ₽',
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 1.5,
                  color: Colors.black
              ),),

          alignment: Alignment.center,
        ),),
        ],
      ),
    );
  }
}
