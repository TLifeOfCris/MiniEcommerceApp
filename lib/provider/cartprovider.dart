import 'package:flutter/material.dart';
import '../models/product.dart';

class Cartprovider with ChangeNotifier {
  final List <CartItem> _items = [];

  List <CartItem> get items => _items;

  void addToCart(Product product){
    final index = _items.indexWhere((item) => item.product.productName == product.productName);
        if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product, quantity: 1));
    }
    notifyListeners();
  }

  void removeFromCart(Product product){
     // Busca la posición del producto en la lista
  final index = _items.indexWhere((item) => item.product.productName == product.productName);


    if (index >= 0) {
    if (_items[index].quantity > 1) {
      _items[index].quantity--; // solo disminuye la cantidad
    } else {
      _items.removeAt(index); // elimina el item si queda 0
    }
    notifyListeners();
  }
  }
}
