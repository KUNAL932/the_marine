import 'package:flutter/material.dart';

class ProductsDetailScreen extends StatelessWidget {
  final String id;
  final String title;

  ProductsDetailScreen(this.id,this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}