import 'package:flutter/material.dart';
import 'package:miniecommerceapp/screens/logincreataccountscreens/createaccount.dart';
import 'package:miniecommerceapp/screens/logincreataccountscreens/loginscreen.dart';
import 'package:miniecommerceapp/screens/welcomescren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/CreateAccount': (context) => const CreateAnAccountScreen(),
        '/LogIn': (context) => const LoginScreen(),
      },
      home: WelcomeScreen());

    








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

