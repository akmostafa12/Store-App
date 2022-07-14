import 'package:ecommerce/Model/productsmodel.dart';

import '../Helper/api.dart';

class UpdateProduct{
  Future<ProductsModel> updateProuduct ({required String title , required String price,required String desc,required String image, required String  category,required int id})async{
    print(id);
    Map<String,dynamic> data = await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
  'title':title,
  'price':price,
  'desc':desc,
  'image':image,
  'category':category,

  }, );
  return ProductsModel.fromJson(data);
}
}