import 'package:flutter/material.dart';

class Cardprofile extends StatelessWidget {
  final String nombre;
  final String nombrecompleto;
  final IconData icon;
  const Cardprofile({super.key, required this.nombrecompleto, required this.icon, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(nombre),
                  subtitle: Text(nombrecompleto),
                  leading: Icon(icon),
    ));
  }
}