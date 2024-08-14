// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:google_classroom/view/classwork_screen/classwork_screen.dart';
import 'package:google_classroom/view/screen_two/screen_two.dart';
import 'package:google_classroom/view/stream/stream.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key,this.selectedindex
  });
final int? selectedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      extendBody: true,  
      appBar: AppBar(
       elevation: 10,
       shadowColor: Colors.black,
        backgroundColor: ColorConstants.mainwhite,
        leading:IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          icon:  Icon(Icons.menu),),
        

        
        title: Row(children: [
          Text("Google",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey.shade700),),
          SizedBox(width: 5,),
           Text("Classroom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey.shade600,),),
        ],),
        actions: [
          CircleAvatar(radius: 20,backgroundColor: Colors.orange,
            child: Text("H",style: TextStyle(color: ColorConstants.mainwhite),),),
            SizedBox(width: 20,),
          Icon(Icons.more_vert,color: Colors.grey.shade700,),
          SizedBox(width: 15,)
        ],
      ),
      //
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
               child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Update the UI or navigate to another page
                Navigator.pop(context);
              },
            ),
             ],
        ),
      ),



      // drawer: Drawer(
      //   child:ListView(
      //     children: [
      //       DrawerHeader(child: Text("data"),
      //       decoration: BoxDecoration(color: Colors.blue),
      //       ),
      //       ListTile(
      //         title: Text("item 1"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //        ListTile(
      //         title: Text("item 2"),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       )
      //     ],
      //   )
        
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          
          separatorBuilder: (context,index)=> SizedBox(height: 10,),
        
          itemBuilder: (context,index)=>
          InkWell(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (conext)=>BottomNavbarScreen()
              // Stream(
              //   imageurl: DummyDb.dataList[index]["image"],
              // )
              ));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(DummyDb.dataList[index]["image"]),
                fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                    Text(DummyDb.dataList[index]["title"],
                    style: TextStyle(color: ColorConstants.mainwhite,fontSize: 22),),
                    Text(DummyDb.dataList[index]["subtitle"],style: TextStyle(color: ColorConstants.mainwhite,fontSize: 16),)
                  ],),
                //  Spacer(),
                  Icon(Icons.more_vert,color: ColorConstants.mainwhite,)
                ],),
                Spacer(),
                Text(DummyDb.dataList[index]["host"],style: TextStyle(color: ColorConstants.mainwhite,fontSize: 12),)
              ],),
            ),
          ),
          itemCount: DummyDb.dataList.length,
          ),
      ),
  
    
    );
  }
}     