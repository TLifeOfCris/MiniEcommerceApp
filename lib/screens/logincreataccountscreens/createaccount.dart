import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/createfield.dart';

class CreateAnAccountScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
   CreateAnAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('CREATE AN ACCOUNT'),
            Text('Crea una cuenta y comienza a comprar'),
            SizedBox(height: 20,),
            //checar si es mejor sizedbox o container
            Container(
              height: 50,
              width: 400,
              child: TextFormField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Color(0xFFF97316),),
                  labelText: 'Correo',
                  labelStyle: TextStyle(color: Color(0xFF1F2937)),
                  hintText: 'Escribe tu correo',
                  hintStyle: TextStyle(color: Color(0xFF6B7280)),
                  filled: true,
                  fillColor: Color(0xFFF3F4F6),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xFFF97316))
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF1F2937), width: 2),
                    ),
                ),
                style: TextStyle(color: Color(0xFF111827)), 
              ),
            ),
            SizedBox(height: 20,),
            Createfield(icon: Icons.email,
             iconColor: Color(0xFFF97316),
             labelText: 'Confirm e-mail',
             colorLabelText: Color(0xFF1F2937),
             hintText: 'Confirm e-mail', 
             colorHintText: Color(0xFF6B7280), 
             fillColor: Color(0xFFF3F4F6), 
             borderColor: Color(0xFFF97316), 
             bordersideColor: Color(0xFF1F2937), 
             controller: controller, 
             textStyleColor: Color(0xFF111827))

            
          ],
        ),
      ),
    );
  }
}

/*
--------------------------------
  Crear cuenta
--------------------------------
 [  ] Nombre completo
 [  ] Correo electrónico
 [  ] Contraseña
 [  ] Teléfono
 [  ] Dirección (abre un subform)
      - Calle
      - Ciudad
      - CP

 [ Registrarme ]
--------------------------------
*/
