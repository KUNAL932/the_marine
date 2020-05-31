import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Order"),
      ),
      body: Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Column(children: <Widget>[
                                Text("YOUR ADDRESS"),
                                TextField(
                              controller: addressController,
                              decoration: InputDecoration(
                              
                                border: InputBorder.none,
                                hintText: "Enter Your location",
                                labelText: "Near Point/Next To",
                                
                              ),
                      maxLines:2,
                      
                    ),
                  ],)
                ),
              ),
      
    );
  }
}