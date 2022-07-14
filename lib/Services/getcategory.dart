import 'dart:convert';

import 'package:ecommerce/Model/productsmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Helper/api.dart';
class GetCategory{
  Future<List<ProductsModel>> getCategory({required String categoryName})async{
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
      List<ProductsModel> productlist = [];
      for(int i = 0;i<data.length;i++){
        productlist.add(ProductsModel.fromJson(data[i]));
      }
      return productlist;

  }
}