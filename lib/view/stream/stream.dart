// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/announce_screen/announce_screen.dart';
import 'package:google_classroom/view/class_comment/class_comment.dart';
import 'package:google_classroom/view/newtask_screen/newtask_screen.dart';

class Stream extends StatelessWidget {
  const Stream({
    super.key,
    //  this.imageurl
  });
// final String? imageurl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        leading: Icon(Icons.menu),
        actions: [
          Row(
            children: [
              Icon(
                Icons.add_circle,
                color: ColorConstants.grey,
              ),
              Icon(
                Icons.more_vert,
                color: ColorConstants.grey,
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //#1
              buildImageSection(),
              //#2
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnnounceScreen()));
                },
                child: buildAnnounceSection(),
              ),
              SizedBox(
                height: 15,
              ),
              //#3
              ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewtaskScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 12, bottom: 12, left: 12, right: 50),
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorConstants.mainwhite,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8)),
                            border: Border.all(
                                color: ColorConstants.grey, width: 1)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.chat_sharp,
                                color: ColorConstants.mainwhite,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New assignment : Authentication",
                                  style: TextStyle(
                                      color: ColorConstants.mainblack),
                                ),
                                Text("Task",
                                    style: TextStyle(
                                        color: ColorConstants.mainblack)),
                                Text(
                                  "posted 16 jul",
                                  style: TextStyle(
                                      color:
                                          ColorConstants.grey.withOpacity(.90)),
                                )
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.more_vert,
                              color: ColorConstants.grey,
                            ),
                            // SizedBox(width: 15,)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClassComment()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: ColorConstants.mainwhite,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            border: Border.all(
                                color: ColorConstants.grey, width: 1)),
                        child: Text(
                          "Add class comment",
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildAnnounceSection() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: ColorConstants.mainwhite),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.orange,
            child: Text(
              "H",
              style: TextStyle(color: ColorConstants.mainwhite),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text("Announce something to your class")
        ],
      ),
    );
  }

  Container buildImageSection() {
    return Container(
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: Image.network(
          //DummyDb.dataList[index]["image"],
          "https://images.pexels.com/photos/11035393/pexels-photo-11035393.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          // imageurl!,
          fit: BoxFit.cover,
        ));
  }
}
