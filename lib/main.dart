import 'package:flutter/material.dart';
import 'package:miniecommerceapp/provider/cartprovider.dart';
import 'package:miniecommerceapp/provider/provider.dart';
import 'package:miniecommerceapp/screens/logincreataccountscreens/createaccount.dart';
import 'package:miniecommerceapp/screens/logincreataccountscreens/loginscreen.dart';
import 'package:miniecommerceapp/screens/profile/profile.screen.dart';
import 'package:miniecommerceapp/screens/tienda/carrito/carrito.dart';
import 'package:miniecommerceapp/screens/tienda/hometienda.dart';
import 'package:miniecommerceapp/screens/welcomescren.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(

      providers: [
        ChangeNotifierProvider<ProductProvider>(create: (_) => ProductProvider()),
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider())
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          //'/': (context) => const WelcomeScreen(),
          '/CreateAccount': (context) =>  CreateAnAccountScreen(),
          '/LogIn': (context) => LoginScreen(),
          '/profile': (context) => ProfileScreen(),
        },
        home: //WelcomeScreen()
        //HomeTienda()
        //ProfileScreen()
        MiCarrito()
        ),
    );

    








    /*MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: 
    );
    */
  }
}

