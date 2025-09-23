import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/buttonfromwelcome.dart';
import 'package:miniecommerceapp/widgets/createfield.dart';

class CreateAnAccountScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
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
              Createfield(icon: Icons.email,
               iconColor: Color(0xFFF97316),
               labelText: 'Full Name',
               colorLabelText: Color(0xFF1F2937),
               hintText: 'Full Name', 
               colorHintText: Color(0xFF6B7280), 
               fillColor: Color(0xFFF3F4F6), 
               borderColor: Color(0xFFF97316), 
               bordersideColor: Color(0xFF1F2937), 
               controller: nameController, 
               textStyleColor: Color(0xFF111827)),
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

              Createfield(icon: Icons.password,
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
                ),

                SizedBox(height: 20,),
                Createfield(
                icon: Icons.home, 
                iconColor: Color(0xFFF97316), 
                labelText: 'Example: Okuurt st 123', 
                colorLabelText: Color(0xFF1F2937), 
                hintText: 'Street Addres', 
                colorHintText: Color(0xFF6B7280), 
                fillColor: Color(0xFFF3F4F6), 
                borderColor: Color(0xFFF97316), 
                bordersideColor: Color(0xFF1F2937), 
                controller: streetController, 
                textStyleColor: Color(0xFF111827),
                isNumeric: false,
                ),
                SizedBox(height: 20,),
                Createfield(
                icon: Icons.location_city, 
                iconColor: Color(0xFFF97316), 
                labelText: 'Country', 
                colorLabelText: Color(0xFF1F2937), 
                hintText: 'Country', 
                colorHintText: Color(0xFF6B7280), 
                fillColor: Color(0xFFF3F4F6), 
                borderColor: Color(0xFFF97316), 
                bordersideColor: Color(0xFF1F2937), 
                controller: countryController, 
                textStyleColor: Color(0xFF111827),
                isNumeric: false,
                ),
                SizedBox(height: 20,),
                Createfield(
                icon: Icons.markunread_mailbox, 
                iconColor: Color(0xFFF97316), 
                labelText: 'Postal Code', 
                colorLabelText: Color(0xFF1F2937), 
                hintText: 'Postal Code', 
                colorHintText: Color(0xFF6B7280), 
                fillColor: Color(0xFFF3F4F6), 
                borderColor: Color(0xFFF97316), 
                bordersideColor: Color(0xFF1F2937), 
                controller: postalCodeController, 
                textStyleColor: Color(0xFF111827),
                isNumeric: true,
                ),
                SizedBox(height: 30,),

                ButtonFromWelcome(texteo: 'Register', color: Colors.blue, size: 27, onPressed: (){}, textColor: Colors.white)

                


        
              
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
