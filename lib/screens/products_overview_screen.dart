import 'package:ecommerce_app/widget/products_grid.dart';
import 'package:flutter/material.dart';


class ProductOverviewScreen extends StatelessWidget {
  // final List<Product> loadedProducts = [
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductsGrid(),
    );
  }
}

