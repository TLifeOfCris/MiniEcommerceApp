import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('MINI E-COMMERCE APP'),
            Text('Compra cosas bla bla bla bla'),
            //ELEVATED BUTTON
            Text('Create Account'),
            Text('- or -'),
            //ELEVATED BUTTON
            Text('Log In')
          ],
        ),
      ),
    );
  }
}