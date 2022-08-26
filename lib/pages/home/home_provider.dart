import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';
import '../../services/mock_data.dart';
import '../detail/datail_page.dart';
import '../products/products_page.dart';


class HomeProvider extends ChangeNotifier {
  int orderNumber = 0;
  List<Category> categories = [];
  List<Product> products = [];

  void onTapBasket() {
    // TODO: write your code
  }

  void getAllCategories() {
    categories = categoriesMock.map((category) => Category.fromJson(category)).toList();
  }

  void getProducts(String categoryId) {
    products = productsMock
        .where((product) => product["categoryId"] == categoryId)
        .map((product) => Product.fromJson(product)).toList();
  }

  int get gridSize {
    if(products.length >= 4) {
      return 4;
    } else {
      return products.length;
    }
  }

  void openDetailPage({required BuildContext context, required Product product}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: product)));
  }

  void openProductsPage({required BuildContext context, required String id}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsPage(categoryId: id)));
  }
}