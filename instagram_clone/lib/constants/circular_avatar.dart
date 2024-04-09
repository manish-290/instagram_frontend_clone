// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircularBackground extends StatelessWidget {
  final ImageProvider image;
  final double radius;
  const CircularBackground({
    Key? key,
    required this.image,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
             begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
            colors: [
                    Color(0xFFFEDA75),
                    Color(0xFFFA7E1E),
                    Color(0xFFD62976),
                    Color(0xFF962FBF),
                    Color(0xFF4F5BD5),
      
            ],
            )
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: radius,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              ClipOval(
                child: SizedBox(
                  width: radius * 1,
                  height: radius * 1,
                  child: Image(
                    image: image,
                    color: Colors.white,
                   
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            
          ],)
        ),
      ),
    );
  }
}
