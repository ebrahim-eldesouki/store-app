import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  })async {
     Map<String,dynamic> data  =await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": "test",
        "price": "13.5",
        "description": "test product 1",
        "image": "https://i.pravatar.cc",
        "category": "electronic"
      }, token: '',
    );
    return ProductModel.fromJson(data);

  
  }
}
