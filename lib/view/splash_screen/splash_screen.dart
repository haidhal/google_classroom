// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/screen_one/screen_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context)=>ScreenOne()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstants.mainblack ,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 65,width: 70,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("asset/images/32px-Google_Classroom_Logo.svg.png",),
              fit: BoxFit.cover),),
            ),               
           SizedBox(height: 20,),
        
          Text("Google Classroom",style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w100,fontSize: 20),)
        ],),
      ),
    );
  }
}