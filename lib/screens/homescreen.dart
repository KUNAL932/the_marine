import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:the_marin/screens/products_overview_screen.dart';
import 'package:the_marin/widgets/product_categories.dart';
// import 'package:the_marin/screens/checkout.dart';
// import 'package:the_marin/providers/product_providers.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return
      
       Scaffold(
        appBar: AppBar(
          title: Text("The Marine",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
          ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.shopping_cart),
          //      onPressed: () {
          //        Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => Checkout()),
          //         );
          //      }
          //      ),
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            scrollDirection: Axis.vertical,
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
                  child: FlatButton(
                    onPressed: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductsOverviewScreen()),
                  );

                    },
                    child: Text("View More",
                    style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                ),
              ],
              ),
              SizedBox(height: 12,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                     BorderRadius.circular(12),
                  ),
                   child: Image.network("https://sifu.unileversolutions.com/image/en-LK/recipe-topvisual/2/1260-709/authentic-chicken-biryani-50434132.jpg",fit: BoxFit.cover,)
                ),
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
              // SizedBox(height:12,),
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
                      size: 20.0,
                      spacing: 0.5,
                      isReadOnly:true,
                    ),
                    SizedBox(width: 10.0),
                    Text("5 star"),
                    FlatButton(
                      onPressed: null,
                       child: Text("(23 reviews)"))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(child: Text("Food Categories",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              ),
              ),
              SizedBox(height: 12.0),
              Row(
                children:<Widget>[ Expanded(
                child: Container(
                  height: 50,
                  width: 200,
                  child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 6,
                   itemBuilder: (context,i) => ProductCategories()

                    ),
                ),
                  ),]
              ),
              
            ],
          ),
        ),
      );
    
  }
}