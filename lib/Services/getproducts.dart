import 'package:ecommerce/Helper/api.dart';
import 'package:ecommerce/Model/productsmodel.dart';
class GetAllProducts {
  Future<List<ProductsModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductsModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}