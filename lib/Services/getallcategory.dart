import 'dart:convert';
import 'package:ecommerce/Helper/api.dart';
import 'package:http/http.dart' as http;
class GetAllCategory{
Future <List<dynamic>> getallCategory()async{
  List<dynamic> data = await Api().get(url:'https://fakestoreapi.com/products/categories');
  return data;
  
}
}