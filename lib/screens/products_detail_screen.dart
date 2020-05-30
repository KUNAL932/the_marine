import 'package:flutter/material.dart';
import 'package:the_marin/screens/checkout.dart';
class ProductsDetailScreen extends StatefulWidget {

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductsDetailScreen(this.id,this.title,this.description,this.price,this.imageUrl);
  
  @override
  _ProductsDetailScreenState createState() => _ProductsDetailScreenState();
}

class _ProductsDetailScreenState extends State<ProductsDetailScreen> {

  String available ="Available";
  String unavailable = "Unavailable";
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            child: Image.network(widget.imageUrl,
            fit: BoxFit.cover, height: 300,width: 400,
            ),
          ),
          SizedBox(height: 14.0,),
          Container(child: Text(widget.title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
          ),
          ),
          // Container(child: Text("Description",
          // style: TextStyle(
          //   fontSize: 22.0,
          //   color: Theme.of(context).accentColor,
          // ),
          // ),),
          Container(child: Text(widget.description,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18
          ),
          )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
                child: Row(children: <Widget>[
              Text("Quantity -"),
              Container(
                child: IconButton(
                  onPressed: () => subtract(),
                  icon: Icon(Icons.remove),)
              ),
              Text("$quantity"),
              Container(
                child: IconButton(
                  onPressed: () => add(),
                  icon: Icon(Icons.add),
                ),
              ),
              ],)
              ), 
              Container(
                child: Row(
                  children: <Widget>[
                    Text("Availability -"),
                    SizedBox(width: 10.0,),
                    Text('$available',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                    )
                  ],
                ),
              ),
            ],)
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout(widget.title,widget.description,widget.price,widget.imageUrl),),);
              },child: Text("Buy"),),
          )
        ],),
        ),
    );
  }
}
