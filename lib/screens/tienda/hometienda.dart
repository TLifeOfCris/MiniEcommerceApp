
import 'package:flutter/material.dart';
import 'package:miniecommerceapp/provider/provider.dart';
import 'package:miniecommerceapp/widgets/buttonscategories.dart';

class HomeTienda extends StatelessWidget {
  const HomeTienda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('CAMBIAR NOMBRE'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:  16.0),
            child: Row(
              children: <Widget>[
                //Cambiar a boton normal
                IconButton(icon:  Icon(Icons.search, size: 28),onPressed: () {}, ),
                SizedBox(width: 24,),
            Stack(children: <Widget>[
              //Cambiar a botón normal
              IconButton(icon: Icon(Icons.shopping_cart, size: 28),onPressed: () {}, ),
              
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 8,
                //HACERLO REACTIVO CON EL NÚMERO DE ARITCULOS EN EL CARRITO 
                child: Text('3'),)),
              ],
            )
            ],),
          )
        ],
      ),




      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Buscar producto',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            ),
          ),
          



          SizedBox(height: 20,),



          //Text('BANNER DINAMICO')
          //AQUI PONER REMOTE CONFIG
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            color: Colors.orange[400],
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: <Widget>[
                Text('OFERTA DEL DÍA - #DINAMICO% OFF!', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
                ),),
                const Icon(Icons.local_offer, color: Colors.white, size: 20,)
              ],
              ),
            ),
            ),
                    //AQUÍ TERMINA EL BANNER DINAMICO
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    /*
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2,
                    */
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, // 1 fila
                      mainAxisSpacing: 10, // espacio entre tarjetas
                      childAspectRatio: 2, // ancho / alto de cada tarjeta
                      ),
                      itemCount: ProductProvider().categorias.length,
                      itemBuilder: (context, index){
                        final categoria = ProductProvider().categorias[index];
                        return Categories(texteo: categoria);
                      },
 
                    ),
                ),

        ],
        
      ),
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