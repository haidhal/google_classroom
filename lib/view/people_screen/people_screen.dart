// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
       shadowColor: Colors.black,
         leading: Icon(Icons.menu,color: ColorConstants.darkgrey),
        title:
         Text( "Flutter May 24 shihab" ,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,color: ColorConstants.darkgrey  ),),
          actions: [
            Icon(Icons.more_vert,color: ColorConstants.darkgrey,)
          ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Teachers",
            style: TextStyle(
              fontSize: 22,
              color: ColorConstants.darkgrey
          
            ),),
            Container(
            height: 1,
          
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorConstants.darkgrey
            ),
          ),
          SizedBox(height: 20,),
          Row(children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("N",
              style: TextStyle(
                color: Colors.white
              ),),
            ),
            SizedBox(width: 25,),
            Text("Neethu unni",
            style: TextStyle(
              color: ColorConstants.mainblack,
              fontSize: 20
            ),)
          ],),
          SizedBox(height: 20,),
          Text("Classmates",
          style: TextStyle(
            fontSize: 20
          ),),
           Container(
            height: 1,
          
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorConstants.darkgrey
            ),
          ),
          SizedBox(height: 20,),
               SizedBox(
                 child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 separatorBuilder: (context,index)=>SizedBox(height: 20,),
                 itemCount: DummyDb.peoplename.length,
                       itemBuilder: (context,index)=>
                         Row(
                           children: [
                  CircleAvatar(
                    backgroundColor: DummyDb.peoplepage[index]["color"],
                    child: Text(DummyDb.peoplepage[index]["letter"]),
                  ),
                  SizedBox(width: 10,),
                  Text(DummyDb.peoplename[index],
                  style: TextStyle(color: ColorConstants.mainblack,
                  fontSize: 15),)
                           ],
                         ),
                       
                       ),
               )
          
          ],),
        ),
      ),
    );
  }
}