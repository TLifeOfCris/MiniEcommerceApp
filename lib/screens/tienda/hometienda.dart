
import 'package:flutter/material.dart';

class HomeTienda extends StatelessWidget {
  const HomeTienda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('MI TIENDA X'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:  16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.search, size: 28,),
                SizedBox(width: 24,),
            Stack(children: <Widget>[
              Icon(Icons.shopping_cart, size: 28,),
              
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 8,
                
                child: Text('3'),)),
              ],
            )
            
            ],),
          )
        ],
        

      ),
    );
  }
}
/*
------------------------------------------------
 AppBar: [ TiendaX ]          [ 🔍 ][ 🛒3 ]
------------------------------------------------
 [ Buscar productos... 🔎 ]

 [ Banner dinámico ]
 "Oferta del día - 20% OFF!"
 (color y texto de Remote Config)

 [ Categorías ]
 [📱 Electrónica] [👕 Ropa] [🏠 Hogar]

 [ Productos ]
 ┌──────────────┐   ┌──────────────┐
 |   Imagen     |   |   Imagen     |
 |  Producto 1  |   |  Producto 2  |
 | $200 (-20%)  |   | $500         |
 └──────────────┘   └──────────────┘

 ┌──────────────┐   ┌──────────────┐
 |   Imagen     |   |   Imagen     |
 |  Producto 3  |   |  Producto 4  |
 | $350         |   | $800         |
 └──────────────┘   └──────────────┘
------------------------------------------------
*/