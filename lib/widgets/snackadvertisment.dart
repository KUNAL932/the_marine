import 'package:flutter/material.dart';

class SnackAdvertisment extends StatefulWidget {

  String title;
  String description;
  double price;
  String imageUrl;
  
  SnackAdvertisment(this.title,this.description,this.price,this.imageUrl);

  @override
  _SnackAdvertismentState createState() => _SnackAdvertismentState();
}

class _SnackAdvertismentState extends State<SnackAdvertisment> {
  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                // height: 220,
                // width: 220,
                padding: EdgeInsets.all(10.0),
                child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Align(alignment: Alignment.topLeft,
                        child: Image.network(widget.imageUrl,
                        fit: BoxFit.fitWidth,
                        height: 90,
                        ),
                        ),
                        ),
                      Column(
                        children: <Widget>[
                          Container(
                            child:Text(widget.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                            ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Rs",
                                    style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                  ),
                                    ),
                                SizedBox(width: 5.0,),
                                Text("${widget.price}",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                            ),
                          ],
                        ),
                        ),
                          Container(
                          // margin: EdgeInsets.symmetric(horizontal:30),
                          // padding: EdgeInsets.fromLTRB(0,0, 0,20),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text("Add",
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).backgroundColor,
                              fontWeight: FontWeight.w600

                            )  ,
                            ),),
                        ),
                        
                        ],
                      ),
                      
                  
                      ],
                    ),
                  

                
                ]
                
                ),
                
              ),
              
              );
  }
}