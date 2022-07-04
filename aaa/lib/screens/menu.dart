import 'package:aaa/screens/details.dart';
import 'package:flutter/material.dart';
import '../models/jsonRead.dart';
import 'details.dart' ;
import '../models/dish.dart';



class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);



  @override

  Widget build(BuildContext context) {
    ReadJsonData();

    return Scaffold(
          appBar: AppBar(
            title: const Text('Меню', style: TextStyle(
              fontSize: 30.0,
            )),
            centerTitle: true,
            backgroundColor: Colors.red[900],

          ),
          body:FutureBuilder(
            future: ReadJsonData(),
            builder: (context,data) {
              if(data.hasError){
                return Text("${data.error}");
              }
              else if (data.hasData){
              var dishes = data.data as List<Dish>;

              return Stack(
              children:[
                Align(

                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: dishes.length,

                    // ignore: deprecated_member_use
                    itemBuilder: (_, index) => RaisedButton(
                        color: Colors.white,

                        child: Column( children: [
                          Card(

                            elevation: 5,
                            shadowColor: Colors.brown,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                              child: Row(children: [
                                Align(alignment: Alignment.centerLeft,child: SizedBox(
                                width: 130,
                                height: 130,
                                  child: Image.asset(dishes[index].image)

                              ),
                              ),

                                  SizedBox(
                                    width: 210,
                                    height: 110,
                                    child:
                                    //Align(
                                      //child:
                                      Column(children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              dishes[index].name.toString(),
                                              //dishes[index].name.toString(),
                                            maxLines: 2,
                                              style: TextStyle(
                                                color: Colors.red[800],
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2),),),),
                                        Align(
                                            child: Padding( padding: const EdgeInsets.fromLTRB(5, 0, 0, 0), child: Container(
                                              height: 53,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                dishes[index].description.toString(),
                                                style: const TextStyle(
                                                  letterSpacing: 1.5,
                                                  fontStyle: FontStyle.italic,),),),),),
                                        Align(
                                          child: Padding(padding: const EdgeInsets.fromLTRB(5,5,0,0),child: Container(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              '${dishes[index].price} ₽'),),)
                                        ),
                                    ],),
                                  ),
                                  //)

                            ])

                          ),]),
                          onPressed: (){

                            Navigator.push(

                              context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                  name: dishes[index].name.toString(),
                                  description: dishes[index].description.toString(),
                                  price: dishes[index].price.toString(),
                                  image: dishes[index].image.toString());
                            }),
                            );
                          }

                    ),),)
              ]);}
              else{
                return
                  //Text("nice");
                const Center(child: CircularProgressIndicator(),);
              }

            })
      );
 }

}
