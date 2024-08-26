// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/utils/color_constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        title: Text("Notifications",
        style: TextStyle(
          color: ColorConstants.mainwhite,
          fontWeight: FontWeight.w700,
          fontSize: 20
        ),),
        actions: [
          Text("All",
          style: TextStyle(
            color: ColorConstants.mainwhite,
            fontWeight: FontWeight.w600,
          ),),
          SizedBox(width: 10,),

              PopupMenuButton(
                        color: ColorConstants.mainblack,
                        icon: Icon(Icons.arrow_drop_down,
                        color: ColorConstants.mainwhite,),
                        itemBuilder: (context)=>[
                          PopupMenuItem(child:
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                     Text("All",
                                                  style: TextStyle(
                                                    color: ColorConstants.mainwhite,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500
                                                  ),),
                                                  SizedBox(height: 10,),
                               Text("Unread",
                                                  style: TextStyle(
                                                    color: ColorConstants.mainwhite,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500
                                                  ),),
                                                  SizedBox(height: 10,),
                                                     Text("Read",
                                                  style: TextStyle(
                                                    color: ColorConstants.mainwhite,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500
                                                  ),),
                            
                            ],),
                          ),
                    
                      onTap: (){},
                       )
                        ])
        ],
      ),
      body:ListView.separated(
                  itemCount: 10,
                     separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.grey,
                        child: Icon(Icons.people_alt,
                        color: ColorConstants.darkgrey,),
                      ),
                        SizedBox(width: 20,),
                        Text("New assignment",
                        style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),),
                        Spacer(),
                        Text("23 Aug",
                        style: TextStyle(
                          color: ColorConstants.mainwhite,
                        ),)
                            
                      ],
                    ),
                  )
                  ) ,
    );
  }
}