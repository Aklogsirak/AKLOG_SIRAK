import 'package:flutter/material.dart';

void main() => runApp(FoodOrderApp());

class FoodOrderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Order'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image.network(
                  'https://www.example.com/pizza.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                'Pizza',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.network(
                  'https://www.example.com/burger.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                'Burger',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.network(
                  'https://www.example.com/fries.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                'Fries',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.network(
                  'https://www.example.com/drink.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                'Drink',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
