import 'package:flutter/material.dart';

class Createfield extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String labelText;
  final Color colorLabelText;
  final String hintText;
  final Color colorHintText;
  final Color fillColor;
  final Color borderColor;
  final Color bordersideColor;
  final Color textStyleColor;
  final TextEditingController controller;
  const Createfield({super.key, 
  required this.icon,
  required this.iconColor,
  required this.labelText,
  required this.colorLabelText,
  required this.hintText,
  required this.colorHintText,
  required this.fillColor,
  required this.borderColor,
  required this.bordersideColor,
  required this.controller,
  required this.textStyleColor
  });


  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              width: 400,
              child: TextFormField(
                controller: controller,

                decoration: InputDecoration(
                  prefixIcon: Icon(icon, color: iconColor,),
                  labelText: labelText,
                  labelStyle: TextStyle(color: colorLabelText),
                  hintText: hintText,
                  hintStyle: TextStyle(color: colorHintText),
                  filled: true,
                  fillColor: fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: borderColor)
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: bordersideColor, width: 2),
                    ),
                ),
                style: TextStyle(color: textStyleColor), 
              ),
            );
  }
}