import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String texteo;
  Categories({super.key, required this.texteo});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 20,
                        child: Card(
                          color: Colors.white,
                          elevation: 4, // sombra
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // bordes redondeados
                            ),
                          child: Padding(
                            
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Center(child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(texteo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue[800]),))),
                          ),
                        ),
                      );
  }
}