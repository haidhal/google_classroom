// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/utils/color_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
     appBar: AppBar(
      backgroundColor: ColorConstants.mainblack,
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.cancel_outlined,
        color: ColorConstants.mainwhite,),
      ),
      title: Text("Settings",
      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
      ),
      actions: [
        Icon(Icons.more_vert,
        color: ColorConstants.mainwhite,)
      ],
     ),
     body: Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Account settings",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 5,
          ),
          Text("Update your photo,password",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),),
         
        ],),
         SizedBox(height: 15,),
        Divider(
          color: ColorConstants.darkgrey,
          thickness: 2,
        ),
        SizedBox(height:20 ,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Change name",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 5,
          ),
          Text("To change your name,ask your admin",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),),
         
        ],),
         SizedBox(height: 15,),
        Divider(
          color: ColorConstants.darkgrey,
          thickness: 2,
        ),
        SizedBox(height:20 ,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Notifications",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 5,
          ),
          Text("Choose which ones you get on this device and by email",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),),
         
        ],),
         SizedBox(height: 15,),
        Divider(
          color: ColorConstants.darkgrey,
          thickness: 2,
        ),
        SizedBox(height:20 ,),

         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Choose theme",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 5,
          ),
          Text("System default",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),),
         
        ],),
         SizedBox(height: 15,),
        Divider(
          color: ColorConstants.darkgrey,
          thickness: 2,
        ),
        SizedBox(height:20 ,),

         Text("About",
         style: TextStyle(
           color: ColorConstants.mainwhite,
           fontSize: 20,
           fontWeight: FontWeight.w500
         ),),
         SizedBox(height: 15,),
        Divider(
          color: ColorConstants.darkgrey,
          thickness: 2,
        ),
        SizedBox(height:20 ,),
       ],),
     ),
    );
  }
}