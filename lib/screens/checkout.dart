import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @required  String title;
  @required  String description;
  @required  double price;
  @required  String imageUrl;

  
  
  Checkout(this.title,this.description,this.price,this.imageUrl);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title:Text("Your Cart Items")
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Card(
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
                      title: Text(widget.title),
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
                        ),
                        ),
                        IconButton(
                            color: Colors.blue,
                            onPressed: () => subtract(),
                            icon: Icon(Icons.remove),
                            ),
                       
                        Text("$quantity",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        IconButton(
                          color: Colors.blue,
                          onPressed: () => add(),
                          icon: Icon(Icons.add),
                      ),
                      
                      ],
                      )
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal:10),
                        child:Row(children: <Widget>[
                          Icon(Icons.attach_money),
                          Text("234.0",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          )
                        ],)
                      ),
                       
                      ],
                      ),


                  ],
                ),
              ),
            ),
            Container(),
          ],),
        ),
    );
  }
}