import 'package:flutter/material.dart';
import 'package:the_marin/model/products.dart';
// import 'package:the_marin/model/products.dart';

class Snack extends StatefulWidget {
  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  final List<Product> loadedProducts = [
    Product(id: "snack1", title: "Cold Drinks", description: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company. Originally marketed as a temperance drink and intended as a patent medicine,", price: 34.0, imageUrl: "https://5.imimg.com/data5/JN/YC/NF/SELLER-59097240/2l-coca-cola-cold-drinks-500x500.jpg"),
    Product(id: "snack2", title: "French Fries", description: "French fries, or simply fries, chips, finger chips, or french-fried potatoes, are batonnet or allumette-cut deep-fried potatoes", price: 40.0, imageUrl: "https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries-.jpg"),
    Product(id: "snack3", title: "Cold Coffee", description: "Iced coffee is a type of coffee beverage served chilled, brewed variously with the fundamental division being cold brew – brewing the coffee cold, yielding a different flavor, and not requiring cooling", price: 95.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSc1JUX7ZFoe1Q81o92Yss0s2U4mk-Y6cimUZA1g6kOKWdvthD0&usqp=CAU"),
    Product(id: "snack4", title: "Masala Tea", description: "Masala chai is a flavoured tea beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs. Originating in the Indian subcontinent,", price: 20.0, imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTenBtIrSe_-oxFfMzE8CzMsTcv2LvR6Cj3_I6u3ByIrlRoSigE&usqp=CAU"),
    Product(id: "snack5", title: "Soda", description: "A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring", price: 30.0, imageUrl: "https://www.coca-colaindia.com/content/dam/journey/in/en/private/our-brands/Kinley%20Soda/iNDIA-PROD.rendition.300.270.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}