import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinText,
    required this.labelText,
    required this.controller,
    this.maxlines = 1,
     this.suffixIcon = const  Icon(Icons.info), 
     this.preffixIcon = const  Icon(Icons.info), 
     
  });

final String hinText;
final String labelText;
final Icon suffixIcon;
final Icon preffixIcon;
final  TextEditingController? controller;

final int maxlines;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextField(
        maxLines: maxlines,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hinText,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.black,
            ),
             
            
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.grey
              ),
            )
          ),
                   
                   ),
    );
  }
}