//UI credits Link - 
//https://dribbble.com/shots/16909295-Finance-App-Light-Color-scheme


import 'package:finance_app/Pages/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance App',
      scrollBehavior: MyBehavior(),
      // theme: ThemeData(primarySwatch: colo),
      home: BottomNavBar(),
      
    );
  }
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}