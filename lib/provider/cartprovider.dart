import 'package:flutter/material.dart';
import 'package:miniecommerceapp/models/cart_item.dart';
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

  //Cuantos del mismo producto quieres 

  void increaseQuantity(Product product){
    final index = _items.indexWhere((item ) => item.product.productName == product.productName);
    if (index >= 0){
      _items[index].quantity++;
      notifyListeners();
    }
  }

  void decreaseQuantity(Product product){
    final index = _items.indexWhere((item) => item.product.productName == product.productName);
    if (index >= 0 && _items[index].quantity > 1){
      _items[index].quantity--;
    } else {
      removeFromCart(product);
    }
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
    double get total => _items.fold(0, (sum, item) => sum + item.subtotal);
}
