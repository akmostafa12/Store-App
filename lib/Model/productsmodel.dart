import 'package:flutter/foundation.dart';

class ProductsModel {
  dynamic  id ;
  String  title;
  dynamic  price;
  String  description;
  String  image;
  RatingModel ? rate;
  String category;
  ProductsModel({required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rate,
    required this.category});
  factory ProductsModel.fromJson(jsonData){
    return ProductsModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rate: RatingModel.fromJson(jsonData['rating']),
        category: jsonData['category']);
  }
}
class RatingModel{
dynamic  rate;
int  count;
RatingModel({required this.rate,required this.count});
factory RatingModel.fromJson(jsonData){
  return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
}
}