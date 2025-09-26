import 'package:flutter/material.dart';
import 'package:miniecommerceapp/models/product.dart';
import 'package:provider/provider.dart';

class ProductProvider extends ChangeNotifier{

  List<String> categorias = ['ELECTRONICA', 'ROPA', 'HOGAR', 'MASCOTAS'];


  List<Product> productos = [Product(id: '1314', productName: 'prueba', category: 'ELECTRONICA', price: 20, description: 'PUREBA', stock: true),
  Product(id: '1314', productName: 'prueba', category: 'ELECTRONICA', price: 20, description: 'PUREBA', stock: true),
  Product(id: '1314', productName: 'prueba', category: 'ELECTRONICA', price: 20, description: 'PUREBA', stock: true), Product(id: '1314', productName: 'prueba', category: 'ELECTRONICA', price: 20, description: 'PUREBA', stock: true),
  Product(id: '1314', productName: 'prueba', category: 'ELECTRONICA', price: 20, description: 'PUREBA', stock: true)];

}