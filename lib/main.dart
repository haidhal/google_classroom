import 'package:flutter/material.dart';
import 'package:google_classroom/view/screen_one/screen_one.dart';
import 'package:google_classroom/view/splash_screen/splash_screen.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}