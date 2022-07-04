
class Dish {
  String? name;
  String? description;
  int? price;
  // ignore: prefer_typing_uninitialized_variables
  var image;

  Dish({
    this.name,
    this.description,
    this.price,
    this.image
  });

  factory Dish.fromJson(Map<String, dynamic> json) => Dish(
    //return Dish(
        name: json['name'],
        description: json['description'],
        price: json['price'],
        image: json['image']
    );



}