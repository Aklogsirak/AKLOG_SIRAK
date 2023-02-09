import 'package:flutter/material.dart';

void main() => runApp(FoodOrderApp());

class FoodOrderApp extends StatefulWidget {
  @override
  _FoodOrderAppState createState() => _FoodOrderAppState();
}

class _FoodOrderAppState extends State<FoodOrderApp> {
  int _quantity = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

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
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: _decrementQuantity,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        '$_quantity',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _incrementQuantity,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
