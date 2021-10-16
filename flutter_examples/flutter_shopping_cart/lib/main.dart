import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/components/shoppingcart_detail.dart';
import 'package:flutter_shopping_cart/components/shoppingcart_header.dart';
import 'package:flutter_shopping_cart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() => AppBar(
        elevation: 6.0,
        leading: IconButton(
          onPressed: () {
            print("Icon Button Clicked");
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Actions Button Clicked");
            },
            icon: Icon(Icons.shopping_cart),
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      );
}
