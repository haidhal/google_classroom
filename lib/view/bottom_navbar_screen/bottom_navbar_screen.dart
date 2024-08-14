// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_classroom/dummy_db.dart';
import 'package:google_classroom/utils/color_constants.dart';
import 'package:google_classroom/view/classwork_screen/classwork_screen.dart';
import 'package:google_classroom/view/people_screen/people_screen.dart';
import 'package:google_classroom/view/stream/stream.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({
    super.key,
    // required this.imageurl
  });
  // final String imageurl;
  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screenlist = [Stream(), ClassworkScreen(), PeopleScreen()];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenlist[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.mainblack,
        unselectedItemColor: ColorConstants.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks_outlined), label: "Stream"),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_all), label: "Classwork"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        ],
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
      ),
    );
  }
}
