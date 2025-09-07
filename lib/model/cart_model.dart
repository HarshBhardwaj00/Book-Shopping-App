import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Myth of Sisyphus",
      "1.85",
      "lib/images/61zulk3oQzL._SY522_.jpg",
      Colors.red,
    ],
    [
      "Ashtavakra Gita",
      "4.62",
      "lib/images/815yW4S19WL._SY466_.jpg",
      Colors.yellow,
    ],
    [
      "Metamorphosis",
      "1.39",
      "lib/images/71qR+kG+43L._SY466_.jpg",
      Colors.green,
    ],
    ["Vedanta", "4.70", "lib/images/618FD4qTtPL._SY466_.jpg", Colors.orange],
  ];
  get shopItems => _shopItems;
  final List _cartItems = [];
  get cartItems => _cartItems;
  void addItem(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItem(int index) {
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
