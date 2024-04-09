import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/circular_avatar.dart';
import 'package:instagram_clone/constants/customButton.dart';
import 'package:instagram_clone/screens/add_screen.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
     
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color:Colors.white),
        backgroundColor: Colors.black,
        flexibleSpace: FlexibleSpaceBar(
          title: Row(
          children: [
          Icon(Icons.lock,color: Colors.white,),
          SizedBox(width:10),
          Text('Manish paudel',style:TextStyle(
            fontSize: 18,
            color:Colors.white,
            fontWeight: FontWeight.bold
          ))
        ],),
        ),
        actions: [
          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.white,)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>AddMedia()));
            }, icon: Icon(Icons.add_box_outlined,color: Colors.white,)),
            IconButton(
              onPressed: (){
                _scaffoldKey.currentState!.openDrawer();
              }
                
              ,
               icon: Icon(Icons.menu,color: Colors.white,)),

          ],)
        ],
      ),
       drawer: Drawer(
        
                backgroundColor: Colors.black,
                child:ListView(
                   padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        image: DecorationImage(
                          image:AssetImage("assets/images/setting.png") )
                      ),
                      child: Text("Settings and privacy",
                    style:TextStyle(
                      color:Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ))),
                    ListTile(
                      leading: Icon(Icons.save,color:Colors.white),
                      onTap: (){},
                      title:Text("Saved",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                      ListTile(
                         leading: Icon(Icons.local_activity,color:Colors.white),
                      onTap: (){},
                      title:Text("Your activity",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                      ListTile(
                         leading: Icon(Icons.notification_add,color:Colors.white),
                      onTap: (){},
                      title:Text("Notifications",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                      ListTile(
                         leading: Icon(Icons.archive,color:Colors.white),
                      onTap: (){},
                      title:Text("Archive",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                      ListTile(
                         leading: Icon(Icons.timelapse,color:Colors.white),
                      onTap: (){},
                      title:Text("Time spent",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                      ListTile(
                         leading: Icon(Icons.privacy_tip,color:Colors.white),
                      onTap: (){},
                      title:Text("Account privacy",style:TextStyle(
                        color: Colors.white
                      ))
                    ),
                  ],
                )
              ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/manish.jpg",
                
                ),
                // backgroundColor: Colors.grey[400],
                radius: 35,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left:40.0,top: 30),
                  child: IconButton(
                    onPressed: (){},
                     icon: Icon(Icons.add_a_photo,color: Colors.white,)),
                ),
              ),
            
          //time for the post 
          Column(children: [
            Text("8",style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color:Colors.white
            )),
             Text("posts",style:TextStyle(
              fontSize: 12,
              color:Colors.white
            )),
          ],),
  // SizedBox(width: 20,),
          //for followers
          Column(children: [
               Text("12M",style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color:Colors.white
            )),
             Text("followers",style:TextStyle(
              fontSize: 12,
              color:Colors.white
            )),
          ],),
          // SizedBox(width: 20,),
          //for following
          Column(children: [
             Text("115",style:TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color:Colors.white
            )),
             Text("following",style:TextStyle(
              fontSize: 12,
              color:Colors.white
            )),
          ],),
            ],),
          SizedBox(height:10),
            //bio and intro part
            Row(children: [
              Text("मनिष",style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              color:Colors.white
              )),
              Icon(Icons.push_pin_outlined,color:Colors.red)
            ],),
            Container(
              
              width:130,
              decoration: BoxDecoration(
                color:Colors.grey[500],
            borderRadius: BorderRadius.circular(18),
              ),
              child:Row(children: [
                  Icon(Icons.facebook,color:Colors.white),
                  Text("  themanish517",style:TextStyle(
                fontSize: 12,
              color:Colors.white
              ))
              ],)
            ),
             Row(children: [
              Text("Improve yourself.",style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              color:Colors.white
              )),
              Icon(Icons.check,color:Colors.green)
            ],),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             // edit profile button
             ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.4),
  
              ),
              onPressed: (){},
               child: Text("Edit profile",style:TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white
               ))),
              //share profile button
                ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.4)
              ),
              onPressed: (){},
               child: Text("Share profile",style:TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white
               ))),
               //add requests
                ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.4)
              ),
              onPressed: (){},
               child:Icon(Icons.person_add_outlined,color:Colors.white))

            ],),
            SizedBox(height:30),
            Row(children: [
                CircularBackground(
                    image:  AssetImage("assets/images/add.png"),
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

            ],),
            const Divider(),
            SizedBox(height:25),
            GridView.builder(
              itemCount: 21,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              childAspectRatio: 1.0,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2),
               itemBuilder: (context,index){
                  return Container(
                     height:30,
                  width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4)
                    ),
                  );
               })
          ],),
        ),
      )
    );
  }
}