import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
            icon: Icon(Icons.notifications),
             onPressed: () {},
            //  color: Colors,
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
            )
          ],
        ),
      ),
    );
  }
}