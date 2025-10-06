
import 'package:flutter/material.dart';
import 'package:miniecommerceapp/provider/cartprovider.dart';
import 'package:miniecommerceapp/provider/provider.dart';
import 'package:miniecommerceapp/widgets/buttonscategories.dart';
import 'package:provider/provider.dart';

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
                Stack(children: <Widget>[
              //Cambiar a botón normal
              //CARRITO
              IconButton(icon: Icon(Icons.shopping_cart, size: 28),onPressed: () {
                 Navigator.pushNamed(context, '/Carrito');
              }, ),
              
              Positioned(
                right: 0,
                top: 0,
                child: Consumer<CartProvider>( builder: (context, cart, child) => CircleAvatar(
                  radius: 8,
                //HACERLO REACTIVO CON EL NÚMERO DE ARITCULOS EN EL CARRITO 
                child: Text(cart.items.length.toString()),)))
              ],
            ),
                //Cambiar a boton normal
                IconButton(icon:  Icon(Icons.search, size: 28),onPressed: () {}, ),
                SizedBox(width: 24,),
                IconButton(onPressed: (){
                  Navigator.pushNamed(context, '/profile');
                }, icon: Icon(Icons.person, size: 28,)),
            
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
                SizedBox(
                  height: 70,
                  child: ListView.separated(itemBuilder: (context, index){
                    final providerProduct = Provider.of<ProductProvider>(context, listen: false);
                    
                    //final categoria = ProductProvider().categorias[index];
                    final categoria = providerProduct.categorias[index];
                    return SizedBox(
                      width: 120,
                      child: GestureDetector(
                        
                        
                        child: Categories(texteo: categoria, 
                        onTap: () {
                                  providerProduct.selectCategory(categoria);
                                  print('Categría seleccionada $categoria');
                        },)));
                  }, separatorBuilder: (_, __) => SizedBox(width: 12),
                  scrollDirection: Axis.horizontal,
                  
                   itemCount: Provider.of<ProductProvider>(context, listen: false).categorias.length),
                ),

                SizedBox(height: 30,),

                //AQUI TERMINA CATEGORIAS 

          Expanded(
            child: Consumer<ProductProvider>(
              builder: (context, productProvider, child) {
                // Lista de productos a mostrar: filtrados o todos si no hay filtro
                final productsToShow = productProvider.getFilteredProducts.isEmpty
                    ? productProvider.productos
                    : productProvider.getFilteredProducts;

                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,       // 2 columnas
                    mainAxisSpacing: 12,     // espacio vertical
                    crossAxisSpacing: 12,    // espacio horizontal
                    childAspectRatio: 0.8,   // ancho/alto de cada tarjeta
                  ),
                  itemCount: productsToShow.length,
                  itemBuilder: (context, index) {
                    final producto = productsToShow[index];

                    return Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  producto.productName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(producto.category),
                                SizedBox(height: 5),
                                Text('\$${producto.price.toStringAsFixed(2)}'),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: FloatingActionButton(
                            heroTag: 'add_${producto.id}',
                            onPressed: () => context.read<CartProvider>().addToCart(producto),
                            backgroundColor: Colors.white,
                            child: const Icon(Icons.add_shopping_cart),
                          ),
                        ),
                      ],
                    );
                  },
                );
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