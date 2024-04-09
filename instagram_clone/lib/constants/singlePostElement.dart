import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/circular_avatar.dart';

class SinglePostElement extends StatelessWidget {
  const SinglePostElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                CircularBackground(
                  image: AssetImage("assets/images/person.png"),
                   radius: 15),
                   SizedBox(width: 10,),
                   Column(children: [
                    Text("Manish",style:TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:13
                    )),
                     Text("Hetauda",style:TextStyle(
                      color:Colors.white,
                      fontSize:8
                    )),
                   ],),
                  
              ],),
               IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.more_vert,color:Colors.white))
            ],
          ),SizedBox(height: 10,),
          Container(
            height:300,
            width:double.infinity,
            color:Colors.grey[800],
            child: Image.asset('assets/images/manish.jpg',
            fit:BoxFit.cover),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              //for like
              IconButton(
                onPressed: (){},
               icon: Icon(Icons.favorite_outline,color:Colors.white,weight: 2,)),
               //for  comment
                GestureDetector(
              onTap: (){},
              child: Image.asset("assets/images/comment.png",
              scale:50,color: Colors.white,)),
              
                 //for share
              IconButton(onPressed: (){},
               icon: Icon(Icons.share_sharp,color:Colors.white,weight: 2))
            ],),
            GestureDetector(
              onTap: (){},
              child: Image.asset("assets/images/save.png",
              scale:8,color: Colors.white,))
          ],),
          SizedBox(height: 12,),
          Text("1111 Likes",style:TextStyle(
            color:Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
          )),SizedBox(width: 10,),
          Row(children: [
            Text("Manish ",style:TextStyle(
            color:Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
          )),SizedBox(width:5),
          Image.asset("assets/images/fav1.png",scale:75)

          ],),
           SizedBox(width: 10,),
           Text("View 100 comments",style:TextStyle(
            color:Colors.grey[500],
            fontSize: 12,
          )),SizedBox(width: 10,),
           Text("12 minutes ago",style:TextStyle(
            color:Colors.grey[500],
            fontSize: 12,
          )),
         
        ]),
      ),
    );
  }
}