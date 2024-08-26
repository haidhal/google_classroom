// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/classroomfile_screen/classroomfile_screen.dart';
import 'package:google_classroom/view/notification_screen/notification_screen.dart';
import 'package:google_classroom/view/screen_one/screen_one.dart';
import 'package:google_classroom/view/settings_screen/settings_screen.dart';
import 'package:google_classroom/view/stream/stream.dart';

class OfflineFiles extends StatelessWidget {
  const OfflineFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorConstants.mainblack,
        appBar: AppBar(
          backgroundColor: ColorConstants.mainblack,
          // leading: Icon(Icons.menu,
          // color: ColorConstants.mainwhite,),
          title: Text("Offline files",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
          actions: [
            Icon(Icons.more_vert,
            color: ColorConstants.mainwhite,)
          ],
        ),
         drawer: Drawer(
        backgroundColor: ColorConstants.mainblack,
        child:ListView(
         
          children:<Widget>[
            SizedBox(
              height: 80,
              child: DrawerHeader(
                
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Google Classroom",
                    style: TextStyle(
                      color: ColorConstants.mainwhite,
                      fontWeight: FontWeight.bold
                    ),),
                    
                              
                  ],
                              ),
                )),
            ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: SingleChildScrollView(
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  TextButton(onPressed: (){
                                           Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>ScreenOne()));
                              }, 
                              child: Row(
                                           children: [
                                             Icon(Icons.home_filled,
                                             color: ColorConstants.mainwhite,),
                                             SizedBox(width: 10,),
                                             Text("Classes",
                                             style: TextStyle(color: ColorConstants.mainwhite,
                                             //fontSize: 15
                                             ),),
                                           ],
                              )),
                              SizedBox(height: 15,),
                                 TextButton(onPressed: (){
                                           Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>ScreenOne()));
                              }, 
                              child: Row(
                                           children: [
                                             Icon(Icons.assignment_outlined,
                                             color: ColorConstants.mainwhite,),
                                              SizedBox(width: 10,),
                                             Text("Calender",
                                             style: TextStyle(color: ColorConstants.mainwhite,
                                             //fontSize: 15
                                             ),),
                                           ],
                              )),
                                     SizedBox(height: 15,),       
                               TextButton(onPressed: (){
                                           Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>NotificationScreen()));
                              }, 
                              child: Row(
                                           children: [
                                             Icon(Icons.notifications_none_outlined,
                                             color: ColorConstants.mainwhite,),
                                              SizedBox(width: 10,),
                                             Text("Notifications",
                                             style: TextStyle(color: ColorConstants.mainwhite),),
                                           ],
                              )) ,
                               SizedBox(height: 15,),
                               Container(
                                                   height: 1,
                                                 
                                                   width: double.infinity,
                                                   decoration: BoxDecoration(
                                                     color: ColorConstants.darkgrey
                                                   ),
                                                 ),
                                                  SizedBox(height: 15,),
                                                 Text("ENROLLED",
                                                 style: TextStyle(color: ColorConstants.mainwhite,
                                                 fontWeight: FontWeight.normal),),
                                                 SizedBox(height: 15,),
                                                 Row(children: [
                                                   Icon(Icons.assignment_outlined,
                                                   color: ColorConstants.mainwhite,),
                                                   SizedBox(width: 15,),
                                                   Text("To Do",
                                                   style: TextStyle(color: ColorConstants.mainwhite),),
                                                   
                                                 ],),
                                                 SizedBox(height: 15,),
                                                 ListView.separated(
                                                  shrinkWrap: true,
                                                   itemBuilder: (context,index)=>
                                                     InkWell(
                                                      onTap: (){
                                                        Navigator.push(context, 
                                                        MaterialPageRoute(builder: (context)=>Stream()));
                                                      },
                                                       child: Row(
                                                                                                          children: [
                                                       CircleAvatar(
                                                                               radius: 15,
                                                                               backgroundColor:DummyDb.peoplepage[index]["color"],
                                                                               child: Text(DummyDb.peoplepage[index]["letter"],
                                                                               style: TextStyle(color: ColorConstants.mainwhite),),
                                                       ),
                                                       SizedBox(width: 10,),
                                                       Text(
                                                                               DummyDb.dataList[index]["title"],
                                                                              style: TextStyle(color: ColorConstants.mainwhite),
                                                                               ),
                                                                               SizedBox(height: 15,),
                                                                                                          ],
                                                                                                        ),
                                                     ), 
                                                   separatorBuilder:(context,index)=> SizedBox(height: 10,),
                                                    itemCount:5
                                                   //  DummyDb.dataList.length
                                                     ),
                                                     SizedBox(height: 15,),
                                                      Container(
                                                   height: 1,
                                                 
                                                   width: double.infinity,
                                                   decoration: BoxDecoration(
                                                     color: ColorConstants.darkgrey
                                                   ),
                                                 ),
                                                  SizedBox(height: 15,),
                                                 InkWell(
                                                  onTap: (){
                                                    Navigator.push(context, 
                                                    MaterialPageRoute(builder: (context)=>OfflineFiles()));
                                                  },
                                                   child: Row(children: [
                                                     Icon(Icons.check_circle_outline_rounded,
                                                     color: ColorConstants.mainwhite,),
                                                     SizedBox(width: 15,),
                                                     Text("Offline files",
                                                     style: TextStyle(color: ColorConstants.mainwhite),),
                                                     
                                                   ],),
                                                 ),
                                                  SizedBox(height: 15,),
                                                 InkWell(
                                                  onTap: (){
                                                    Navigator.push(context,
                                                     MaterialPageRoute(builder: (context)=>ClassroomfileScreen()));
                                                  },
                                                   child: Row(children: [
                                                     Icon(Icons.save_outlined,
                                                     color: ColorConstants.mainwhite,),
                                                     SizedBox(width: 15,),
                                                     Text("Classroom folders",
                                                     style: TextStyle(color: ColorConstants.mainwhite),),
                                                     
                                                   ],),
                                                 ),
                                                  SizedBox(height: 15,),
                                                 InkWell(
                                                  onTap: (){
                                                    Navigator.push(context, 
                                                    MaterialPageRoute(builder: (context)=>SettingsScreen()));
                                                  },
                                                   child: Row(children: [
                                                     Icon(Icons.assignment_outlined,
                                                     color: ColorConstants.mainwhite,),
                                                     SizedBox(width: 15,),
                                                     Text("Settings",
                                                     style: TextStyle(color: ColorConstants.mainwhite),),
                                                     
                                                   ],),
                                                 ),
                                                 
                                                     
                             
                                               
                             
                              ],
                             ),
                           ),
                         )
          ] ,
        ) ,
      ),    
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.grey,
                  width: 2),
                  borderRadius: BorderRadius.circular(2)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Classes",
                      style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),),
                      PopupMenuButton(
                        color: ColorConstants.mainblack,
                        icon: Icon(Icons.arrow_drop_down,
                        color: ColorConstants.mainwhite,),
                        itemBuilder: (context)=>[
                          PopupMenuItem(child: Text("All Classes",
                      style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),),
                      onTap: (){},
                       )
                        ])
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22,),
              SizedBox(
                child: ListView.separated(
                  itemCount: 10,
                     separatorBuilder: (context,index)=>SizedBox(height: 20,),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>Row(
                    children: [
                      Icon(Icons.picture_as_pdf,
                      color: Color.fromARGB(255, 251, 97, 86),),
                      SizedBox(width: 20,),
                      Text("programming in c1",
                      style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                      Spacer(),
                      Icon(Icons.cancel_presentation_outlined,
                      color: ColorConstants.mainwhite,)
                          
                    ],
                  )
                  ),
              )
            ],),
          ),
        ),
      ),
    );
  }
}