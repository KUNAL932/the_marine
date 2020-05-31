import 'package:flutter/material.dart';
import 'package:the_marin/model/products.dart';
import 'package:the_marin/widgets/snackadvertisment.dart';
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
  final List<Product> advertismentProducts = [
    Product(id: "snack1", title: "Cold Drinks", description: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company. Originally marketed as a temperance drink and intended as a patent medicine,", price: 34.0, imageUrl: "https://5.imimg.com/data5/JN/YC/NF/SELLER-59097240/2l-coca-cola-cold-drinks-500x500.jpg"),
    Product(id: "snack2", title: "French Fries", description: "French fries, or simply fries, chips, finger chips, or french-fried potatoes, are batonnet or allumette-cut deep-fried potatoes", price: 40.0, imageUrl: "https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries-.jpg"),
    Product(id: "snack3", title: "Cold Coffee", description: "Iced coffee is a type of coffee beverage served chilled, brewed variously with the fundamental division being cold brew – brewing the coffee cold, yielding a different flavor, and not requiring cooling", price: 95.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSc1JUX7ZFoe1Q81o92Yss0s2U4mk-Y6cimUZA1g6kOKWdvthD0&usqp=CAU"),
    Product(id: "snack4", title: "Masala Tea", description: "Masala chai is a flavoured tea beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs. Originating in the Indian subcontinent,", price: 20.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTenBtIrSe_-oxFfMzE8CzMsTcv2LvR6Cj3_I6u3ByIrlRoSigE&usqp=CAU"),
    Product(id: "snack5", title: "Soda", description: "A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring", price: 30.0, imageUrl: "https://www.coca-colaindia.com/content/dam/journey/in/en/private/our-brands/Kinley%20Soda/iNDIA-PROD.rendition.300.270.jpg"),
  ];
  int quantity = 1;

  // get price(){
  //   setState(() {
      
  //   });
  //    return widget.price;
  // }

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
    final addressController = TextEditingController();

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
                                      Text("9898",
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
                        ),
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
                         Card(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                      Icon(Icons.add_shopping_cart,
                                      color: Theme.of(context).backgroundColor,
                                      ),
                                      // SizedBox(width: 10.0,),
                                      Column( children: <Widget>[
                                        Text("SELECT OFFER/APPLY COUPON"),
                                        Text("Get discout with your order",
                                        style:TextStyle(color: Colors.black54)
                                        ),
                                      ]
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                      color: Theme.of(context).backgroundColor,
                                      )
                                ],)
                              ),
                            ), 
                          Card(
                            color: Colors.white,
                            child: Container(
                              child: Column(children: <Widget>[
                                Text("YOUR ADDRESS"),
                                TextField(
                              controller: addressController,
                      decoration: InputDecoration(
                      
                        border: UnderlineInputBorder(),
                        hintText: "Enter Your location",
                        labelText: "Address",
                        
                      ),
                      maxLines:2,
                      
                    ),
                  ],)
                ),
              ),

          ],),
        ),
    );
  }
}