// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;
  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color
        ),
        onPressed: onTap, 
        child: Text(text,style: TextStyle(
          fontWeight: FontWeight.bold,
          color:Colors.white),)),
    );
  }
}
