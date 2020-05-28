import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Checkout Cart")
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
            Container(child: Text("ITEMS"),)
          ],),
        ),
    );
  }
}