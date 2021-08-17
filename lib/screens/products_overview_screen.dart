import 'package:ecommerce_app/widget/products_grid.dart';
import 'package:flutter/material.dart';

enum FilterOptions{
  Favorites,
  All
}

class ProductOverviewScreen extends StatefulWidget {
  // final List<Product> loadedProducts = [
  //
  // ];


  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onSelected: (FilterOptions val){
                setState(() {
                  if(val == FilterOptions.Favorites){
                    // productsContainer.showFavoritesOnly();
                    _showOnlyFavorites = true;
                  }else{
                    // productsContainer.showAll();
                    _showOnlyFavorites = false;
                  }
                });
              },
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text(
                        'Only Favorites',
                      ),
                      value: FilterOptions.Favorites,
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Show all',
                      ),
                      value: FilterOptions.All,
                    ),
                  ]),
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
