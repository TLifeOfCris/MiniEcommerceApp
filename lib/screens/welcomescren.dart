import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/buttonfromwelcome.dart';

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
            Text('MINI E-COMMERCE APP', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            //SE PODRÍA USAR REMOTE CONFIG AQUÍ PARA ESCRIBIR DISTINTOS TEXTOS
            Text('Compra cosas bla bla bla bla', style: TextStyle(fontSize: 20),),

            SizedBox(height: 30,),
            //ELEVATED BUTTON
           ButtonFromWelcome(texteo: 'Create An Account', color: Colors.blue, size: 24, onPressed: (){
              Navigator.pushNamed(context, '/CreateAccount');
           }, textColor: Colors.white),

           SizedBox(height: 30,),
           // Text('Create Account'),
            Text('- or -'),
            SizedBox(height: 30,),
            //ELEVATED BUTTON
            ButtonFromWelcome(texteo: 'Log In', color: Colors.white, size: 24, textColor: Colors.black, onPressed: (){
                 Navigator.pushNamed(context, '/LogIn');
            })
            //Text('Log In')
          ],
        ),
      ),
    );
  }
}