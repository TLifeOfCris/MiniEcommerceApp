import 'package:flutter/material.dart';
import 'package:miniecommerceapp/provider/cartprovider.dart';
import 'package:provider/provider.dart';

class MiCarrito extends StatelessWidget {
  const MiCarrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Mi Carrito') ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Consumer<CartProvider>(
                builder: (context, cart, child){
                  return ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index){
                    final cartItem = cart.items[index];
                    return Card(child: ListTile(
                      leading: CircleAvatar(
                        child: Text('${index +1}'),
                      ),
                      title: Text(cartItem.product.productName),
                      subtitle: Text('Cantidad: ${cartItem.quantity}\nSubtotal: \$${cartItem.subtotal}'),
                      trailing: IconButton(onPressed: (){
                        cart.removeFromCart(cartItem.product);
                      }, icon: Icon(Icons.delete, color: Colors.red,)),
                    ),);
                  });
                }),
            )
          ],
        ),
      ),
    );
  }
}