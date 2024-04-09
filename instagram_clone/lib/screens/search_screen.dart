import'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 35),
          child: Column(
            children: [
            Container(
              
              height:50,
              width:double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[600]?.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0,),
                child: Row(children: [
                  Icon(Icons.search,color: Colors.white,),
                  SizedBox(width:10),
                  Text("Search",style:TextStyle(
                    fontSize: 18,
                    color:Colors.grey[300]
                  ))
                ]),
              ),
            ),
            SizedBox(height: 10,),
            GridView.builder(
                physics: ScrollPhysics(),
                 shrinkWrap: true,
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 mainAxisSpacing: 5,
               crossAxisSpacing: 5,
              childAspectRatio: 1.0,
                crossAxisCount: 3), 
              itemBuilder: (context,index){
                return Container(
                  height:60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.2)
                  ),
                );
              }),
              SizedBox(height: 90,)
              
          ],),
        ),
      )
    );
  }
}