import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/constants/bottombar.dart';
import 'package:instagram_clone/constants/circular_avatar.dart';
import 'package:instagram_clone/constants/singlePostElement.dart';
import 'package:instagram_clone/screens/authentication_screen/login.dart';
import 'package:instagram_clone/screens/authentication_screen/signup.dart';
import 'package:instagram_clone/screens/search_screen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  late PageController pageController;
   bool isLoggedIn = true;

@override 
void initState(){
  super.initState();
  pageController = PageController(initialPage: selectedIndex);
}

void logout(){
  setState(() {
    isLoggedIn = false;
  });
}

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
    
        backgroundColor:Colors.black,
        title:SvgPicture.asset("assets/images/instagram.svg",
        height:40,width:40,color:Colors.white),
        actions: [
          Row(children: [
            IconButton(
              onPressed: (){},
               icon: Icon(Icons.favorite_border,color:Colors.white)),
               SizedBox(width:10),
               Image.asset("assets/images/message.png",
               height:25,
               color: Colors.white,),SizedBox(width:10),
               IconButton(
                onPressed: (){
                    setState(() {
                     
                    });
                     logout();
                    Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context)=>InstagramSignup()
                ));
                },
              
                icon: Icon(Icons.logout,color:Colors.white))
          ],)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  CircularBackground(
                    image:  AssetImage("assets/images/add.png"),
                    radius: 30,
                   ),SizedBox(height:10),
                   
                     CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),   
                    CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                    CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                    CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                    CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                    CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ), CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                   CircularBackground(
                    image:  AssetImage("assets/images/person.png"),
                    radius: 30,
                   ),
                ],),
              ),

               Padding(
                 padding: const EdgeInsets.only(left:18.0),
                 child: Text("Your story",style:TextStyle(
                  fontSize:14,
                  color:Colors.black,
                  fontWeight: FontWeight.bold
                 )
                         ),
               ),
              //lets add the post and name 
              SizedBox(height:20),
              SinglePostElement(),
              SizedBox(height:20),
              SinglePostElement(),
               SizedBox(height:20),
              SinglePostElement(),
               SizedBox(height:20),
              SinglePostElement(),
              SizedBox(height:70),
               
            ],),
          ),
        )),
        
    
     );
    
  }
}