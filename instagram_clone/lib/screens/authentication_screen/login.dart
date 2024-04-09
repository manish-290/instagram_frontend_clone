import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constants/bottombar.dart';
import 'package:instagram_clone/constants/customButton.dart';
import 'package:instagram_clone/constants/customTextField.dart';
import 'package:instagram_clone/home/homepage.dart';
import 'package:instagram_clone/screens/authentication_screen/signup.dart';

class InstagramLogin extends StatefulWidget {
  const InstagramLogin({super.key});

  @override
  State<InstagramLogin> createState() => _InstagramLoginState();
}

class _InstagramLoginState extends State<InstagramLogin> {

  final _loginkey = GlobalKey<FormState>();
 
  final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
           
            Form(
              key:_loginkey,
              child: Padding(
                padding: const EdgeInsets.only(top:120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                   SvgPicture.asset("assets/images/instagram.svg",
                            color: Colors.white,
                            height: 100,
                            width:120),
                            SizedBox(height: 20,),
                  CustomTextField(
                    hintText: 'Phone number, email address or username',
                     obsecureText: false, 
                     controller: _emailController),
                     SizedBox(height:15),
                     CustomTextField(
                    hintText: 'Password',
                     obsecureText: true, 
                     controller: _passwordController),
                     SizedBox(height: 15,),
                    CustomButton(
                      color: Colors.blue,
                      text: "Log In", 
                      onTap: () { 
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>CustomBottomBar()));
                       },),
                
                      ///text portion
                      SizedBox(height: 10,),
                            Row(children: [
                Text("Fogotten your login details?",
                style:TextStyle(
                  fontSize: 12,
                  color:Colors.grey
                )),
                 Text("Get help with loggin in.",
                style:TextStyle(
                  fontSize: 12,
                  color:Colors.white,
                  fontWeight: FontWeight.bold
                )),
                            ],),
                ],
                            ),
              )),
            
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Don't have an account?",
                style:TextStyle(
                  fontSize: 12,
                  color:Colors.grey
                )),
                 GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>InstagramSignup()));
                  },
                   child: Text("Sign up.",
                                   style:TextStyle(
                    fontSize: 12,
                    color:Colors.white,
                    fontWeight: FontWeight.bold
                                   )),
                 ),
              ],),
            )
          ],),
        ),
      )
    );
  }
}