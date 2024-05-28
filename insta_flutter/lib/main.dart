import 'package:flutter/material.dart';
import 'package:insta_flutter/responsive/mobileScreenLayout.dart';
import 'package:insta_flutter/responsive/responsive_layout_screen.dart';
import 'package:insta_flutter/responsive/webScreenLayout.dart';
import 'package:insta_flutter/utils/colors.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() ,webScreenLayout: webScreenLayout()),
      );
  }
}
