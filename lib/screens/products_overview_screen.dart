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
    imageUrl: 'https://sifu.unileversolutions.com/image/en-LK/recipe-topvisual/2/1260-709/authentic-chicken-biryani-50434132.jpg',

    ),
    Product(id: 'pro2',
    title: 'Hydrabadi Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://myfoodstory.com/wp-content/uploads/2018/09/The-Best-Chicken-Biryani-Recipe-1.jpg',

    ),
    Product(id: 'pro3',
    title: 'Jharkhandi Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://www.pressurecookrecipes.com/wp-content/uploads/2020/03/instant-pot-chicken-biryani.jpg',

    ),
    Product(id: 'pro4',
    title: 'Punjabi Chicken Biryani',
    description: 'Hydrabadi Chicken biryani with lemon flavor',
    price: 200.0,
    imageUrl: 'https://www.pressurecookrecipes.com/wp-content/uploads/2020/03/instant-pot-chicken-biryani.jpg',

    ),
    Product(id: 'pro5', title: "Honey Garlic Chicken Breast", description: "Want to serve with creamy garlic chicken.", price: 180.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRSqtydqSDExj-9Pgz4L-9cTfkjf6HMPAzfwLtvOFY9beFqCw3-&usqp=CAU"),
    Product(id: 'pro6', title: "Chicken Lolipop", description: "Chicken lollipop is an hors d'oeuvre popular in Indo-Chinese cuisine.", price: 250.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRSqtydqSDExj-9Pgz4L-9cTfkjf6HMPAzfwLtvOFY9beFqCw3-&usqp=CAU"),
    Product(id: 'pro7', title: "Chicken Curry",price: 300, description: "kjak",imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRSqtydqSDExj-9Pgz4L-9cTfkjf6HMPAzfwLtvOFY9beFqCw3-&usqp=CAU"),
    Product(id: 'pro8', title: "Chicken Changezi", description: "A north Indian dish with unique chicken juicy gravy flavour", price: 230.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcShA9GDsfL8tuROUMGeZli8k36yEpgS9JXKgA0JEO7tHExsyQJm&usqp=CAU"),
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
            loadedProducts[i].description,
            loadedProducts[i].price,
            loadedProducts[i].imageUrl,
            ),
            
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2 , crossAxisSpacing: 10, mainAxisSpacing: 10),
      )
      );
  }
}