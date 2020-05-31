import 'package:flutter/material.dart';
import 'package:the_marin/model/products.dart';
import 'package:the_marin/widgets/snackadvertisment.dart';
import 'package:the_marin/widgets/cart_item.dart';
import 'package:the_marin/screens/place_order.dart';

class Checkout extends StatelessWidget {
  @required final String title;
  @required final String description;
  @required final double price;
  @required final String imageUrl;

  
  
  Checkout(this.title,this.description,this.price,this.imageUrl);
  final List<Product> advertismentProducts = [
    Product(id: "snack1", title: "Cold Drinks", description: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company. Originally marketed as a temperance drink and intended as a patent medicine,", price: 34.0, imageUrl: "https://5.imimg.com/data5/JN/YC/NF/SELLER-59097240/2l-coca-cola-cold-drinks-500x500.jpg"),
    Product(id: "snack2", title: "French Fries", description: "French fries, or simply fries, chips, finger chips, or french-fried potatoes, are batonnet or allumette-cut deep-fried potatoes", price: 40.0, imageUrl: "https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries-.jpg"),
    Product(id: "snack3", title: "Cold Coffee", description: "Iced coffee is a type of coffee beverage served chilled, brewed variously with the fundamental division being cold brew – brewing the coffee cold, yielding a different flavor, and not requiring cooling", price: 95.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSc1JUX7ZFoe1Q81o92Yss0s2U4mk-Y6cimUZA1g6kOKWdvthD0&usqp=CAU"),
    Product(id: "snack4", title: "Masala Tea", description: "Masala chai is a flavoured tea beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs. Originating in the Indian subcontinent,", price: 20.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTenBtIrSe_-oxFfMzE8CzMsTcv2LvR6Cj3_I6u3ByIrlRoSigE&usqp=CAU"),
    Product(id: "snack5", title: "Soda", description: "A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring", price: 30.0, imageUrl: "https://www.coca-colaindia.com/content/dam/journey/in/en/private/our-brands/Kinley%20Soda/iNDIA-PROD.rendition.300.270.jpg"),
  ];

  double get quantity => null;
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
                        CartItem(title, description, "$price", imageUrl),
                        
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:5.0),
                          child: Text("Frequently Bought Together",
                          style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          ),
                        ),
                        Expanded(
                              child: SizedBox(
                              height: 300,
                              child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: advertismentProducts.length,
                              itemBuilder: (context,i) => SnackAdvertisment(
                              advertismentProducts[i].title,
                              advertismentProducts[i].description,
                              advertismentProducts[i].price,
                              advertismentProducts[i].imageUrl
                              ),
                              ),
                          ),
                        ),
                         Card(
                              child: Container(
                                height: 120,
                              padding: EdgeInsets.fromLTRB(10,0,10 ,0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        Icon(Icons.add_shopping_cart,
                                        color: Theme.of(context).backgroundColor,
                                        ),
                                        Column( children: <Widget>[
                                          Text("SELECT OFFER/APPLY COUPON"),
                                          Text("Get discout with your order",
                                          style:TextStyle(color: Colors.black54)
                                          ),
                                          
                                        ]
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          child: Text("Apply"),)
                                  ],),
                                      Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "6 digit coupon",
                                            border: InputBorder.none,
                                            labelText: "Enter coupon for offer"
                                            ),
                                            maxLines: 1,
                                            ),
                                      ),
                                ],
                              )
                                ),
                            ), 
                            Container(
                              width: 400,
                              child: RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlaceOrder(title,quantity,price,imageUrl),),);
                                },
                                child: Text("Save And Continue"),
                                ),
                            ),
                          

          ],
          ),
        ),
    );
  }
}