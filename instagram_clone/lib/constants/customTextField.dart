// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.obsecureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color:Colors.grey[400]),
        fillColor: Colors.grey[600],
        filled: true
      ),
      validator: (val){
        if(val==null||val.isEmpty){
          return 'Enter your $hintText';
        }
      },
    );
  }
}
