import 'package:flutter/material.dart';

class ProductCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        color: Theme.of(context).backgroundColor,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text("Chicken Changezi",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
      );
  }
}