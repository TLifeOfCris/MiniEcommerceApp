import 'package:flutter/material.dart';
import 'package:miniecommerceapp/widgets/buttonfromwelcome.dart';
import 'package:miniecommerceapp/widgets/cardprofile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PERFIL')),
        backgroundColor: Colors.orange[400],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: CircleAvatar(
                radius: 70,
              )),
              SizedBox(height: 50,),
              Cardprofile(nombrecompleto: 'Nombre', icon: Icons.person, nombre: 'NOMBRE'),
              SizedBox(height: 30,),
              Cardprofile(nombrecompleto: 'CORREO ELECTRONICO', icon: Icons.email, nombre: 'E-MAIL'),
              SizedBox(height: 30,),
              Cardprofile(nombrecompleto: '81230493940', icon: Icons.phone, nombre: 'Télefono'),
              SizedBox(height: 30,),
              Cardprofile(nombrecompleto: 'BLA BLA 34335', icon: Icons.home, nombre: 'Dirección'),
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
          ),
        ),
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