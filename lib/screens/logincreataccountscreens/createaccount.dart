import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/createfield.dart';

class CreateAnAccountScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController direccionController = TextEditingController();
   CreateAnAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('CREATE AN ACCOUNT'),
              Text('Crea una cuenta y comienza a comprar'),
              SizedBox(height: 20,),
              //checar si es mejor sizedbox o container
              Createfield(icon: Icons.email,
               iconColor: Color(0xFFF97316),
               labelText: 'e-mail',
               colorLabelText: Color(0xFF1F2937),
               hintText: 'e-mail', 
               colorHintText: Color(0xFF6B7280), 
               fillColor: Color(0xFFF3F4F6), 
               borderColor: Color(0xFFF97316), 
               bordersideColor: Color(0xFF1F2937), 
               controller: emailController, 
               textStyleColor: Color(0xFF111827)),
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
               controller: emailController, 
               textStyleColor: Color(0xFF111827)),
               SizedBox(height: 20,),
              Createfield(
                icon: Icons.phone, 
                iconColor: Color(0xFFF97316), 
                labelText: 'Phone Number', 
                colorLabelText: Color(0xFF1F2937), 
                hintText: 'Phone Number', 
                colorHintText: Color(0xFF6B7280), 
                fillColor: Color(0xFFF3F4F6), 
                borderColor: Color(0xFFF97316), 
                bordersideColor: Color(0xFF1F2937), 
                controller: phoneNumberController, 
                textStyleColor: Color(0xFF111827),
                isNumeric: true,
                )
        
              
            ],
          ),
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
