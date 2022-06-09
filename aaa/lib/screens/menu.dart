import 'package:aaa/main.dart';
import 'package:aaa/screens/details.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import '../models/dish.dart';


class MenuScreen extends StatelessWidget {
  final List<Dish> dishes = [
    Dish(name: "Гренки чесночные (150гр)", description: 'Гренки поджаренные из черного хлеба со вкусом чеснока', price: 115, image: Image.asset("assets/images/grenki.jpg",)),
    Dish(name: "Картошка фри (100гр)", description: 'Жареная картошка во фритюре', price: 90, image: Image.asset("assets/images/kartof.jpg")),
    Dish(name: "Наггетсы куриные (180гр)", description: 'Наггетсы из куриного филе', price: 210, image: Image.asset("assets/images/ng.jpg")),
    Dish(name: "Кольца кальмара (90гр)", description: 'Кольца кльмара во фритюре', price: 180, image: Image.asset("assets/images/kk.jpg")),
    Dish(name: "Сырные палочки (110гр)", description: 'Запеченые палочки из сыра', price: 140, image: Image.asset("assets/images/sirpal.jpg")),
    Dish(name: "Четыре сыра (33см)", description: 'Состав: соус сливочный/томатный, сыр дорблю, сыр моцарелла, сыр мааздам, сыр пармезан', price: 500, image: Image.asset("assets/images/fourcheese.png")),
    Dish(name: "Маргарита (33см)", description: 'Состав: специальный томатный соус, сыр моцарелла', price: 400, image: Image.asset("assets/images/margarita.png")),
    Dish(name: "Цыпленок Ранч (33см)", description: 'Состав: курица копченая, лучок, сладкий перчик, соус барбекю, сыр моцарелла', price: 600, image: Image.asset("assets/images/ranch.png")),
    Dish(name: "Грибная (33см)", description: 'Состав: шампиньоны, сыр моцарелла, сливочный соус, чеснок, укроп', price: 650, image: Image.asset("assets/images/gribi.png")),
    Dish(name: "Пепперони (33см)", description: 'Состав: лучок, пепперони, томатный соус, сыр моцарелла', price: 550, image: Image.asset("assets/images/peperoni.png")),
    Dish(name: "Белый русский", description: 'Водка — 25 мл, Кофейный ликёр — 25 мл, Сливки 11% — 25 мл', price: 315, image: Image.asset("assets/images/russki.jpg")),
    Dish(name: "Кровавая Мэри", description: 'Томатный сок — 150 мл, Водка — 40 мл, Острый соус — несколько капель, Вустерский соус — несколько капель, Щепотка соли и чёрного перца', price: 280, image: Image.asset("assets/images/merry.jpg")),
    Dish(name: "Б-52", description: 'Бейлис — 1 часть, Калуа (кофейный ликёр) — 1 часть, Куантро  — 1 часть', price: 290, image: Image.asset("assets/images/b52.jpg")),
    Dish(name: "Голубая лагуна", description: 'Водка — 50 мл, Блю Кюрасао — 10 мл, Спрайт — 100–150 мл, Долька лимона для украшения', price: 320, image: Image.asset("assets/images/laguna.jpg")),
    Dish(name: "Мохито", description: 'лайм, свежая мята, белый ром	50 мл, сахарный сироп 20 мл, содовая), спрайт, колотый лед', price: 350, image: Image.asset("assets/images/mojito.jpg")),

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:
        Scaffold(
          appBar: AppBar(
            title: Text('Меню', style: TextStyle(
              fontSize: 30.0,
            )),
            centerTitle: true,
            backgroundColor: Colors.red[900],
            // bottom: TabBar(  tabs: [
            //   Tab(child: Text('Закуски'),),
            //   Tab(child: Text('Пицца'),),
            //   Tab(child: Text('Напитки'),),
            // ],
            // ),
      ),
      body:
          Stack(
            children: [
              TabBarView(
                  children: [Center(child: Text("Закуски")),
                  Center(child: Text("Пицца")),
                  Center(child: Text("Напитки"))]),
              ListView.builder(
                padding: EdgeInsets.all(15),
                itemCount: dishes.length,
                itemBuilder: (_, index) => RaisedButton(
                 color: Colors.white,
                    child: Column( children: [
                 Card(
                  elevation: 5,
                  shadowColor: Colors.brown,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        subtitle: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Container(
                             height: 42,
                             width: 300,
                             child: Text(
                               dishes[index].name, style: TextStyle(
                                 fontSize: 15,
                                 fontFamily: "BebasNeue",
                                 color: Colors.red[800],
                               fontWeight: FontWeight.bold,

                                 letterSpacing: 2
                               ),
                             ),),
                           Container(
                             height: 40,
                             width: 300,
                             child: Text("${dishes[index].description}",
                               style: TextStyle(
                                 fontSize: 10,
                                 letterSpacing: 1.5,
                                 fontStyle: FontStyle.italic,
                                 //fontFamily: "BebasNeue",
                               ),
                             ),
                           ),
                           Container(
                             width: 300,
                             child: Text("${dishes[index].price.toString() + ' ₽'}",
                               style: TextStyle(
                                   fontSize: 15,
                                   letterSpacing: 1.5,
                                   color: Colors.black
                               ),),
                           )
                         ]),
                     leading: dishes[index].image,


             ),
            ),]),
            onPressed: (){

              Navigator.push(
                context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(name: dishes[index].name,
                      description: dishes[index].description,
                      price: dishes[index].price,
                      image: dishes[index].image);
              }),
              );
            }

             ),),
          ])),);
  }
}
