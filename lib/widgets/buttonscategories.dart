import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String texteo;
  Categories({super.key, required this.texteo});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 80,
                        child: Card(
                          
                          child: Center(child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(texteo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))),
                        ),
                      );
  }
}