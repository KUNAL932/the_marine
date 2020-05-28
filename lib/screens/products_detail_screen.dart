import 'package:flutter/material.dart';

class ProductsDetailScreen extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductsDetailScreen(this.id,this.title,this.description,this.price,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            child: Image.network(imageUrl,
            fit: BoxFit.cover, height: 300,width: 400,
            ),
          ),
          Container(child: Text(title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
          ),
          ),
          Container(child: Text("Description",
          style: TextStyle(
            fontSize: 22.0,
            color: Theme.of(context).accentColor,
          ),
          ),),
          Container(child: Text(description,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18
          ),
          )
          ),
        ],),
        ),
    );
  }
}