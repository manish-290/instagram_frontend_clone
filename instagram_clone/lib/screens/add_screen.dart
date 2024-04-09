import 'package:flutter/material.dart';

class AddMedia extends StatefulWidget {
  const AddMedia({super.key});

  @override
  State<AddMedia> createState() => _AddMediaState();
}

class _AddMediaState extends State<AddMedia> {
  TextEditingController _captionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:IconButton(
          onPressed: (){},
           icon: Icon(Icons.arrow_back,color:Colors.white),
           ),
           title: Text('Post to',style:TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color:Colors.white)),
      actions: [
        IconButton(
          onPressed: (){},
           icon: Icon(Icons.check,color:const Color.fromARGB(255, 32, 222, 38)))
      ],
      ),
      body:Padding(
        padding: const EdgeInsets.only(left:20),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/manish.jpg"),
                  radius: 30,
                ),
                SizedBox(
                  width:250,
                  height: 50,
                  child: TextField(
                    style: TextStyle(color:Colors.white),
                    controller: _captionController,
                    decoration: InputDecoration(
                      hintText: "Write a caption...",
          
                      hintStyle: TextStyle(color:Colors.white),
                      border: InputBorder.none
                    ),
                    maxLines: 5,
                  ),
                )
              ],
            ),
            const Divider(),
            SizedBox(height:70),
            GestureDetector(
              onTap:(){},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Row(children: [
                   Icon(Icons.person_3,color:Colors.white),SizedBox(width: 8,),
                  Text('Audience',style:TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold
                  ))
                 ],),
                 Icon(Icons.arrow_right_alt,color:Colors.white),
                ],),
              ),
            ),
          
            //for people tag
             SizedBox(height:30),
            GestureDetector(
              onTap:(){},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Row(children: [
                   Icon(Icons.pin_drop,color:Colors.white),SizedBox(width: 8,),
                  Text('Add location',style:TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold
                  ))
                 ],),
                 Icon(Icons.arrow_right_alt,color:Colors.white),
                ],),
              ),
            ),
            //share to facebook
              SizedBox(height:30),
            GestureDetector(
              onTap:(){},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Row(children: [
                   Icon(Icons.facebook,color:Colors.white),SizedBox(width: 8,),
                  Text('Share to facebook',style:TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold
                  ))
                 ],),
                 Text('Off',style:TextStyle(color:Colors.grey[300])),
                 Icon(Icons.arrow_right_alt,color:Colors.white),
                ],),
              ),
            ),
          ],),
        ),
      )
    );
  }
}