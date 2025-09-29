import 'package:flutter/material.dart';

class Product {
  //para identiicar en firebase
  final String id;
  //saber nombre del producto
  final String productName;
  //saber la categoría del producto
  final String category;
  //Created at para saber la fecha de creación de dicho producto
  //final DateTime createdAt;
  //price para saber el precio del producto
  final double price;
  //Breve descripción del producto
  final String description; 
  //Cantidad disponible
  final bool stock;
  //si es un producto destacado o con oferta para el remote play
  final bool isFeatured;
  //si tiene un descuento
  final double discount;
  //rating
  //persona que lo vende aún por implementar okuuurt
  //cretedat


  Product({
    required this.id, 
    required this.productName,
    required this.category,
   // required this.createdAt,
    required this.price,
    required this.description,
    required this.stock,
    this.isFeatured = false,
    this.discount = 0.0,
  });
  


}

class CartItem{
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    required this.quantity
  });

  double get subtotal => product.price * quantity;
}