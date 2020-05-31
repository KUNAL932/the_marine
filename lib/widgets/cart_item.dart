import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  String title;
  String description;
  String price;
  String imageUrl;

  CartItem(this.title,this.description,this.price,this.imageUrl);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;
  void subtract() {
    setState(() {
      quantity--;
    
    });
  }

void add() {
  setState(() {
    quantity++;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Image.network(widget.imageUrl,
                //  fit: BoxFit.fitHeight,
                //  height: 100,
                //  width: 100,
                ),
                title: Text(widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
                ),
                subtitle: Text(widget.description),
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                  
                  Text("Quantity",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  IconButton(
                      // color: Colors.blue,
                      onPressed: () => subtract(),
                      icon: Icon(Icons.remove),
                      ),
                
                  Text("$quantity",
                  style: TextStyle(
                    // color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  IconButton(
                    // color: Colors.blue,
                    onPressed: () => add(),
                    icon: Icon(Icons.add),
                ),
                
                ],
                )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child:Row(children: <Widget>[
                    Text("Rs",
                    style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                    ),
                    ),
                    SizedBox(width:5.0),
                    Text("${widget.price}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    )
                  ],)
                ),
                
                ],
                ),


            ],
          ),
        ),
    );
  }
}