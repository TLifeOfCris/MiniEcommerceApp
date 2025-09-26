import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/buttonfromwelcome.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: CircleAvatar(
            radius: 70,
          )),
          SizedBox(height: 50,),
          Text('Nombre completo del usuario formulario'),
          SizedBox(height: 30,),
          Text('CORREO ELECTRONICO DEL FORMULARIO'),
          SizedBox(height: 30,),
          Text('TELEFONO DEL FORMULARIO'),
          SizedBox(height: 30,),
          Text('Dirección:  DIRECCIÓN DEL FORMULARIO'),
          SizedBox(height: 50,),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ButtonFromWelcome(texteo: 'EDITAR', color: Colors.white, size: 20, onPressed: (){}, textColor: Colors.black),
              SizedBox(width: 30,),
              ButtonFromWelcome(texteo: 'ACEPTAR', color: Colors.white, size: 20, onPressed: (){}, textColor: Colors.black)
            ],
          )
        ],
      )
    );
  }
}
/*
--------------------------------
  Mi perfil
--------------------------------
 Foto [ cambiar ]
 Nombre completo: _________
 Correo: _________ (no editable)
 Teléfono: _________
 Dirección:
   Av. Siempre Viva 742
   CDMX, CP 12345

 [ Editar ]   [ Guardar cambios ]
--------------------------------
*/