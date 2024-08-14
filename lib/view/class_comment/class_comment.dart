import 'package:flutter/material.dart';
import 'package:google_classroom/utils/color_constants.dart';

class ClassComment extends StatelessWidget {
  const ClassComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 10,
       shadowColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,
          color: ColorConstants.grey,),
        ),
        title: Text("Class Comments",
        style: TextStyle(
          color: ColorConstants.mainblack
        ),),
      ),
      body:
       Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: (){},
             child: Container(
             
              height: 30,width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.darkgrey,width: 2)
              ),
               child: Text("Add class comment",
               style: TextStyle(
                color: ColorConstants.grey,
                fontSize: 15
               ),),
             )),
        ],
      ),
    );
  }
}