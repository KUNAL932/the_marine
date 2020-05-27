import 'package:flutter/material.dart';
import 'package:the_marin/model/products.dart';
import 'package:the_marin/widgets/product_item.dart';

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  final List<Product> loadedProducts = [
    Product(id: 'pro1',
    title: 'Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: '"https://sifu.unileversolutions.com/image/en-LK/recipe-topvisual/2/1260-709/authentic-chicken-biryani-50434132.jpg',

    ),
    Product(id: 'pro2',
    title: 'Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://www.pressurecookrecipes.com/wp-content/uploads/2020/03/instant-pot-chicken-biryani.jpg',

    ),
    Product(id: 'pro3',
    title: 'Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://www.pressurecookrecipes.com/wp-content/uploads/2020/03/instant-pot-chicken-biryani.jpg',

    ),
    Product(id: 'pro4',
    title: 'Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://www.pressurecookrecipes.com/wp-content/uploads/2020/03/instant-pot-chicken-biryani.jpg',

    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Marine Store")
      ),
      body: GridView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: loadedProducts.length,
            itemBuilder: (ctx ,i) => ProductItem(loadedProducts[i].id ,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2 , crossAxisSpacing: 10, mainAxisSpacing: 10),
      )
      );
  }
}