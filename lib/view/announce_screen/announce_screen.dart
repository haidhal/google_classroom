// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/stream/stream.dart';

class AnnounceScreen extends StatelessWidget {
  const AnnounceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 10,
       shadowColor: Colors.black,
       // toolbarHeight: 60,
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
          Container(
            height: 40,
           padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color:Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text("Post",
              style: TextStyle(
                color: ColorConstants.mainwhite,
                fontSize: 12
              ),),
            ),
          ),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,
          color: ColorConstants.darkgrey,),
          SizedBox(width: 8,)
        ],
      ),
      body: Column(children: [
        Container(
          
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){},
                child: Icon(Icons.assignment_rounded,
                color: ColorConstants.darkgrey,),
              ),
              SizedBox(width: 20,),
              TextButton(onPressed: (){}, 
              child: Text("Announce something to your class",
              style: TextStyle(color: ColorConstants.grey,
              fontSize: 15),))
              
            ],
          ),
        ),
         Container(
        height: 1,
      
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstants.darkgrey
        ),
      ),
      Container(
        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          InkWell(
                  onTap: (){},
                  child: Icon(Icons.offline_pin_outlined,
                  color: ColorConstants.darkgrey,),
                ),
                SizedBox(width: 20,),
                TextButton(onPressed: (){}, 
                child: Text("Add attachment",
                style: TextStyle(color: ColorConstants.grey,
                fontSize: 15),))
                
        ],),
      ),
       Container(
        height: 1,
      
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstants.darkgrey
        ),
      ),
      ],),
    );
  }
}