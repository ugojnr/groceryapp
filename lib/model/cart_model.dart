import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]

    ['Banana', '600', 'lib/images/banana.png', Colors.blue],
    ['bottle', '150', 'lib/images/bottle.png', Colors.grey],
    ['chicken', '6000', 'lib/images/chicken.png', Colors.green],
    ['orange', '600', 'lib/images/orange.png', Colors.brown],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    //add item to cart
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
