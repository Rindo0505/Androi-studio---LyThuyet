import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Product {
  int id;
  String title;
  double price;
  String description;
  Rating rating;
  String image;


  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.rating,
    required this.image,

  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        price: json['price'].toDouble(),
        description: json['description'],
        rating: Rating.fromJson(json['rating']),
        image: json['image'],

    );
  }
  static Future<List<Product>> fetchData() async{
    var apiUrl = 'https://fakestoreapi.com/products';
    var response=  await http.get(Uri.parse(apiUrl));
    if ( response.statusCode == 200){
      var body = response.body;
      var json = jsonDecode(body);

      var ls = json.map<Product>((e){
        return Product.fromJson(e);
      }).toList();
      return ls;
    }
    else
      throw new Exception("khong co du lieu tra ve");
  }
}

class Rating {
 final double rate;
 final int count;

  Rating({
    required this.rate,
    required this.count,
  });
  factory Rating.fromJson(Map<String,dynamic> json){
    return Rating(rate: json['rate'].toDouble(), count:json['count']);
  }

}



