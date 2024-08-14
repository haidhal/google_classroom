// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/utils/image_constants.dart';
import 'package:google_classroom/view/newtask_screen/newtask_screen.dart';

class ClassworkScreen extends StatelessWidget {
  const ClassworkScreen({super.key,
 
  });
  
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      extendBody: true,
      backgroundColor: ColorConstants.mainwhite,
      appBar: AppBar(
        elevation: 10,
       shadowColor: Colors.black,
        leading: Icon(Icons.menu,color: ColorConstants.darkgrey),
        title:
         Text("flutter" ,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,color: ColorConstants.darkgrey  ),),
          actions: [
            Row(
              
              children: [
              Icon(Icons.filter_list,color: ColorConstants.darkgrey),
              SizedBox(width: 18,),
              Icon(Icons.assignment_ind_outlined,color: ColorConstants.darkgrey),
              SizedBox(width: 18,),
              Icon(Icons.more_vert,color: ColorConstants.darkgrey,),
               SizedBox(width: 15,),
            ],)
          ],
      ),
      body:ListView.builder(
       
        itemBuilder: (context,index)=>Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DummyDb.classworklist[index]["module"],
      style: TextStyle(
        color: ColorConstants.mainblack,
        fontSize: 20,
        fontWeight: FontWeight.w400
      ),
      ),
      SizedBox(height: 10,),
      Container(
        height: 1,
      
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstants.darkgrey
        ),
      ),
       SizedBox(height: 15,),
      InkWell(
        onTap: () {
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=>NewtaskScreen()));
        },
        child: Row(children: [
          CircleAvatar(
            backgroundColor: ColorConstants.darkgrey ,
            child: Icon(Icons.assignment,
            color: ColorConstants.mainwhite,
            size: 20,),
          ),
           SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("SQL slides",
            style: TextStyle(color: ColorConstants.mainblack,
            fontSize: 15,
            fontWeight: FontWeight.w500
            ),),
          //   SizedBox(height: 15,),
            Text("posted on Nov 12",
            style: TextStyle(
              color: ColorConstants.mainblack,
              fontSize: 12,
              fontWeight: FontWeight.normal
            ),)
          ],)
        ],),
      ),
      SizedBox(height: 18,)
          ],
        ),
        
         itemCount: 20) ,
    );
  }
}