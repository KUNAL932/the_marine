import 'package:flutter/material.dart';
import 'package:the_marin/screens/homescreen.dart';
void main() => runApp(
    TheMarine(),
  );

class TheMarine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        fontFamily: 'Teko',
        primarySwatch: Colors.purple,
        backgroundColor: Colors.purple,
        accentColor: Colors.deepOrange,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.purple,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0))
        ),
        
      ),
      home: HomeScreen(),
      
    );
  }
}
