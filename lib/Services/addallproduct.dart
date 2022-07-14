import 'package:ecommerce/Helper/api.dart';
import 'package:ecommerce/Model/productsmodel.dart';
import 'package:http/http.dart' as http;
class AddProduct{
  Future<ProductsModel> addProduct ({required String title , required String price,required String desc,required String image,required String category})async{
    Map<String,dynamic> data = await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title':title,
      'price':price,
      'desc':desc,
      'image':image,
      'category':category,
    }, );
    return ProductsModel.fromJson(data);
  }
}