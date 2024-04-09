import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constants/customButton.dart';
import 'package:instagram_clone/constants/customTextField.dart';
import 'package:instagram_clone/screens/authentication_screen/login.dart';

class InstagramSignup extends StatefulWidget {
  const InstagramSignup({super.key});

  @override
  State<InstagramSignup> createState() => _InstagramSignupState();
}

class _InstagramSignupState extends State<InstagramSignup> {

  final _loginkey = GlobalKey<FormState>();
 
   final TextEditingController _usernameController = TextEditingController();

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
                    hintText: 'Username',
                     obsecureText: false, 
                     controller: _usernameController),
                     SizedBox(height: 15,),
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
                      text: "Sign Up", 
                      onTap: () { 
                         Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>InstagramLogin()));
                       },),
                
                      ///text portion
                      SizedBox(height: 10,),
                            Row(children: [
                Text("New on Instagram?",
                style:TextStyle(
                  fontSize: 12,
                  color:Colors.grey
                )),
                 Text("Get help with registration.",
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
                   Text("Already have an account?",
                style:TextStyle(
                  fontSize: 12,
                  color:Colors.grey
                )),
                 GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>InstagramLogin()));
                  },
                   child: Text("Login.",
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