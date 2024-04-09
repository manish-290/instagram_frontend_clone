import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/authentication_screen/signup.dart';

class InstagramSplash extends StatefulWidget {
  const InstagramSplash({super.key});

  @override
  State<InstagramSplash> createState() => _InstagramSplashState();
}

class _InstagramSplashState extends State<InstagramSplash> 
with SingleTickerProviderStateMixin{

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration:Duration(seconds: 2) );

    @override 
    void initState(){
      super.initState();
      _animationController.forward();

//after 2 seconds redirect to the signup page
Future.delayed(Duration(seconds: 3),(){
  Navigator.push(context, MaterialPageRoute(
    builder: (context)=>InstagramSignup()));
});
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            colors: [
                 Color(0xFFFEDA75),
                    Color(0xFFFA7E1E),
                    Color(0xFFD62976),
                    Color(0xFF962FBF),
                    Color(0xFF4F5BD5),
            ],
             begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
            ),
        ),
        child: Center(
          child:FadeTransition(
            opacity: _animationController,
            child: Image.asset("assets/images/insta_splash.png",
            scale:6))
        ),
      ),

    );
  }
}