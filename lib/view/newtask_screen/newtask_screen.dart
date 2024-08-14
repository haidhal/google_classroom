// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/class_comment/class_comment.dart';
import 'package:google_classroom/view/stream/stream.dart';

class NewtaskScreen extends StatelessWidget {
  const NewtaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: InkWell(
          onTap: () {
            Navigator.pop(context,
            MaterialPageRoute(builder: (context)=>Stream())
            );
          },
          child: Icon(Icons.arrow_back,
          color: ColorConstants.darkgrey,),
        ),
        actions: [
          Icon(Icons.more_vert,
          color: ColorConstants.darkgrey,),
          SizedBox(width: 8,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
              Text("Due jun 18,15 :55",
              style: TextStyle(
                fontSize: 15,
                color: ColorConstants.darkgrey
              ),),
              SizedBox(width: 18,),
              Text("Work cannot be handed in after the due date",
              style: TextStyle(
                color: ColorConstants.darkgrey,
                fontSize: 15
              ),),
              SizedBox(width: 18,),
              Text("dart class test 3",
              style: TextStyle(
                fontSize: 18,
                color: ColorConstants.mainblack
                
              ),),
              SizedBox(width: 18,),
               Text("85/100",
              style: TextStyle(
                fontSize: 15,
                color: ColorConstants.darkgrey
                
              ),),
        
            SizedBox(height: 12,),
            InkWell(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>ClassComment()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.message,
                color: ColorConstants.darkgrey,),
                SizedBox(width: 18,),
                Text("Add class comment",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorConstants.darkgrey
                ),)
              ],),
            ),
            SizedBox(height: 18,),
             Container(
          height: 1,
        
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstants.darkgrey
          ),
        ),
        SizedBox(width: 18,),
        Text("submit a single pdf file in the specified format",
        style: TextStyle(
          color: ColorConstants.darkgrey,
          fontSize: 15
        ),)
            ],
              
            ),
          ),
        
          //#container 2  == drawer
          Container(
            height: 70,
            color: Colors.grey,
          )   
        
        ],),
      ),
    );
  }
}