// ignore_for_file: missing_required_param

import 'package:store_app/helpers/api.dart';

class CategoriesService {
  Future<List<dynamic>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName', );

    return data;
  }
}
