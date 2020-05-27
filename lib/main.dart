import 'package:flutter/material.dart';
import 'home/homescreen.dart';
void main() => runApp(
    TheMarine(),
  );

class TheMarine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.purple,
        accentColor: Colors.white,
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
