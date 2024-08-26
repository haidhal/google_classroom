// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';

class ClassroomfileScreen extends StatelessWidget {
  const ClassroomfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
    appBar: AppBar(
      backgroundColor: ColorConstants.mainblack,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back,
        color: ColorConstants.mainwhite,),
      ),
      title: Text("Classroom",
      style: TextStyle(
        color: ColorConstants.mainwhite,
        fontSize: 25,
        fontWeight: FontWeight.w700
      ),),
      actions: [
        Icon(Icons.search,
        color: ColorConstants.mainwhite,),
        Icon(Icons.more_vert,
        color: ColorConstants.mainwhite,)
      ],
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        child: Column(
          children: [
            Row(children: [
              Text("Name",
              style: TextStyle(
                color: ColorConstants.darkgrey,
                fontSize: 20,
                fontWeight: FontWeight.normal
              ),),
              SizedBox(width: 5,),
              Icon(Icons.arrow_upward_outlined,
              color: ColorConstants.darkgrey,
              size: 22,),
              Spacer(),
              Icon(Icons.view_column,
              color: ColorConstants.darkgrey,
              size: 22,)
            ],),
            SizedBox(height: 20,),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context,index)=>Row(children: [
                Icon(Icons.assignment_outlined,size: 30,
                color: ColorConstants.mainwhite,),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(DummyDb.dataList[index]["title"],
                  overflow: TextOverflow.ellipsis,maxLines: 2,
                  style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontSize: 18
                  ),),
                ),
                Spacer(),
                Icon(Icons.more_vert,size: 25,
                color: ColorConstants.mainwhite,)
              ],),
               separatorBuilder: (context,index)=>SizedBox(height: 20,),
                itemCount: 10)
          ],
        ),
      ),
    ),
    );
  }
}