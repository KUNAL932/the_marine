import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  @required final String title;
  @required final double quantity;
  @required final double price;
  PlaceOrder(this.title,this.quantity,this.price);

  final streetController =  TextEditingController();
  final cityController =  TextEditingController();
  final landScapeController =  TextEditingController();

  orderPlaced(context) {
    return Dialog(
  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 10.0,
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 350,
//        height: MediaQuery.of(context).size.height*0.5,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: double.infinity,
                child: FlatButton(
                  child: Text("Search For New Products",
                    style: TextStyle(
                      // color: Colors.black,
                      fontWeight: FontWeight.w500
                      ),
                  ),
                  color: Theme.of(context).backgroundColor,
                  onPressed: () {
                    
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => IntroScreen()),);
                  },
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Center(
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTx53Zj-8KRsHI42Xjv0anIjad54wkNzoWhKSSuxUSI8GfLYNmY&usqp=CAU",                    
                     fit: BoxFit.contain, height: 150,),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text("Cheers! Your Order is on the Way",
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Place Order"),
      ),
      body: Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                children:  <Widget>[
                  Center(
                    child: Container(
                      child: Column(children: <Widget>[
                        Text("Deliver To"),
                        Card(
                          elevation: 6,
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(children: <Widget>[
                              Text("YOUR ADDRESS"),
                              TextField(
                            controller: streetController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "House Number/Street",
                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                          Card(
                          elevation: 6,
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Column(children: <Widget>[
                              // Text("YOUR ADDRESS"),
                              TextField(
                            controller: cityController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "City/Town",                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                          Card(
                          elevation: 6, 
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Column(children: <Widget>[
                              // Text("YOUR ADDRESS"),
                              TextField(
                            controller: landScapeController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "LandScape",
                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                         
                      ],),
                    ),
                  ),
                  Expanded(
                      child: Card(
                      child: Container(
                        // width: 400,
                        // height: 100,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                            Text("Product"),
                            Text(title)
                          ],),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Text("Quantity"),
                              Text("$quantity"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text("Total"),
                            Chip(
                              label: Text("$price"),
                              backgroundColor: Theme.of(context).backgroundColor),
                          ],
                          ),
                          
                        ]),),
                    ),
                  ),
                   Align(
                     alignment: Alignment.bottomCenter,
                          child: Container(
                            // margin: EdgeInsets.symmetric(vertical: 20),
                          width: 400,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>orderPlaced(context),),);
                            },
                            child: Text("Place Order"),
                            ),
                              ),
                   ),
                  
                ]
              ),
      ),
      
    );
  }
}

