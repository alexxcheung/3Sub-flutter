import 'package:flutter/material.dart';

import 'screens/add_subscription_detail_page_screen.dart';
import 'screens/main_page_screen.dart';
import 'screens/search_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3Sub',
      theme: ThemeData(
        backgroundColor: Color(0xFFE5E5E5),

        // Card:
        // borderColor: 0x33EFEEEE
        // Drop Shadow 0x80D1CDC7
        // Drop Shadow 0x80FFFFFF
        

        // Font
        fontFamily: "Avenir Next",

        textTheme: TextTheme(
          headline: TextStyle(fontSize: 24, fontFamily: "Helvetica Neue", fontWeight: FontWeight.w500, color: Color(0xFF4F4F4F)),
          
          title: TextStyle(fontSize: 20, fontFamily: "Helvetica Neue", fontWeight: FontWeight.w500, color: Color(0xFF4F4F4F)),
          body1: TextStyle(fontSize: 14, fontFamily: "Avenir Next", fontWeight: FontWeight.w400, color: Color(0xFF484848)),
          body2: TextStyle(fontSize: 14, fontFamily: "Avenir Next", fontWeight: FontWeight.w400, color: Color(0xFFA7A7A7)),
          button: TextStyle(fontSize: 14, fontFamily: "Avenir Next", fontWeight: FontWeight.w400, color: Color(0xFF9D9D9D)),
        )
      ),
      home: AddSubscriptionDetailScreen(),
    );
  }
}