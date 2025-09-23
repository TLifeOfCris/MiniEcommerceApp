import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/buttonfromwelcome.dart';
import 'package:miniecommerceapp/widgets/createfield.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text('LOG IN'),
            Text('Entra a tu cuenta y comienza'),
            Text('a comprar'),

            SizedBox(height: 30,),

              Createfield(icon: Icons.email,
               iconColor: Color(0xFFF97316),
               labelText: 'Email',
               colorLabelText: Color(0xFF1F2937),
               hintText: 'Email', 
               colorHintText: Color(0xFF6B7280), 
               fillColor: Color(0xFFF3F4F6), 
               borderColor: Color(0xFFF97316), 
               bordersideColor: Color(0xFF1F2937), 
               controller: emailController, 
               textStyleColor: Color(0xFF111827)),

               SizedBox(height: 30,),

               Createfield(icon: Icons.email,
               iconColor: Color(0xFFF97316),
               labelText: 'Password',
               colorLabelText: Color(0xFF1F2937),
               hintText: 'Password', 
               colorHintText: Color(0xFF6B7280), 
               fillColor: Color(0xFFF3F4F6), 
               borderColor: Color(0xFFF97316), 
               bordersideColor: Color(0xFF1F2937), 
               controller: passwordController, 
               textStyleColor: Color(0xFF111827)),

               SizedBox(height: 30,),

               ButtonFromWelcome(texteo: 'LOG IN', color: Colors.blue, size: 27, onPressed: (){}, textColor: Colors.white)


            

          ],
        ),
      ),
    );
  }
}