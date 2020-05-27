import 'package:flutter/material.dart';
import 'package:the_marin/screens/products_detail_screen.dart';


class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id,this.title,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: GridTile(
          child: GestureDetector(
            onTap:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>ProductsDetailScreen(id,title),),);
            },
            child:Image.network(imageUrl,
            fit: BoxFit.cover,
            ),
            ),
          footer: GridTileBar(
            leading: IconButton(
              icon: Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
              onPressed: () {}),
            backgroundColor: Colors.black54,
            title: Text(title, textAlign: TextAlign.center,)
        ),
      ),
    );
  }
}