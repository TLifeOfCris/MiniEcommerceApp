import 'package:flutter/material.dart';
import 'package:miniecommerceapp/models/product.dart';
import 'package:provider/provider.dart';

class ProductProvider extends ChangeNotifier{

  List<String> categorias = ['ELECTRONICA', 'ROPA', 'HOGAR', 'MASCOTAS'];


  List<Product> productos = [
    Product(
      id: '001',
      productName: 'Audífonos Bluetooth',
      category: 'ELECTRÓNICA',
      price: 499.99,
      description: 'Audífonos inalámbricos con cancelación de ruido.',
      stock: true,
    ),
    Product(
      id: '002',
      productName: 'Mouse Gamer RGB',
      category: 'ELECTRÓNICA',
      price: 350.00,
      description: 'Mouse ergonómico con 6 botones programables y luces RGB.',
      stock: true,
    ),

    // ROPA
    Product(
      id: '003',
      productName: 'Playera Oversize Negra',
      category: 'ROPA',
      price: 249.99,
      description: 'Playera 100% algodón, corte oversize unisex.',
      stock: true,
    ),
    Product(
      id: '004',
      productName: 'Sudadera Hoodie Blanca',
      category: 'ROPA',
      price: 499.99,
      description: 'Sudadera de tela suave con gorro y bolsillo frontal.',
      stock: false,
    ),

    // HOGAR
    Product(
      id: '005',
      productName: 'Lámpara LED de escritorio',
      category: 'HOGAR',
      price: 299.00,
      description: 'Luz cálida con brazo flexible y tres niveles de brillo.',
      stock: true,
    ),
    Product(
      id: '006',
      productName: 'Taza térmica 400ml',
      category: 'HOGAR',
      price: 199.00,
      description: 'Taza de acero inoxidable que mantiene tu bebida caliente.',
      stock: true,
    ),

    // MASCOTAS
    Product(
      id: '007',
      productName: 'Cama para gato mediana',
      category: 'MASCOTAS',
      price: 399.00,
      description: 'Cama acolchada y lavable, ideal para gatos medianos.',
      stock: true,
    ),
    Product(
      id: '008',
      productName: 'Correa retráctil para perro',
      category: 'MASCOTAS',
      price: 249.00,
      description: 'Correa de 5m con freno automático y mango ergonómico.',
      stock: true,
    ),
  ];

}