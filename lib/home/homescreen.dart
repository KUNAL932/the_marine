import 'package:flutter/material.dart';
import 'package:the_marin/pagecheckout/checkout.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 

class HomeScreen extends StatelessWidget {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Marine",
        style: TextStyle(
          fontWeight: FontWeight.w600
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
             onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()),
                );
             }
             ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Container(
                child: Text("Dishes",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
              Container(
                child: Text("View More",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
            ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                borderRadius:
                 BorderRadius.circular(12),
              ),
               child: Image.network("https://sifu.unileversolutions.com/image/en-LK/recipe-topvisual/2/1260-709/authentic-chicken-biryani-50434132.jpg",fit: BoxFit.cover,)
            ),
            SizedBox(height: 12,),
            Container(child: Text("Chicken Biryani",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
            ),
            ),
            SizedBox(height:12,),
            Container(
              child: Row(
                children: <Widget>[
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {
                    },
                    color: Colors.yellow[400],
                    borderColor: Colors.grey[400],
                    starCount: 5,
                    rating: rating,
                    // fullRatedIconData: Icons.blur_off,
                    // halfRatedIconData: Icons.blur_on,
                    size: 20.0,
                    spacing: 0.5,
                    isReadOnly:true,
                  ),
                  SizedBox(width:4.0),
                  Text("5 star"),
                  FlatButton(
                    onPressed: null,
                     child: Text("(23 reviews)"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}