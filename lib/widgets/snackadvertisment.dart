import 'package:flutter/material.dart';

class SnackAdvertisment extends StatelessWidget {

  String title;
  String description;
  double price;
  String imageUrl;

  SnackAdvertisment(this.title,this.description,this.price,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 6,
              color: Colors.white,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
            
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: Align(alignment: Alignment.topLeft,
                        child: Image.network(imageUrl,
                        ),
                        ),
                      ),
                      Container(
                    child:Text(title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ),
                  
                    ],
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
                            Text("$price",
                            style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ],
                    ),
                  ),
                Divider(thickness: 2.0,),
                Card(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                    ],)
                  ),
                ),  
                ]
                ),
              ),
              );
  }
}