import 'package:flutter/material.dart';
import 'package:secondtask/constants/colorconstant.dart';
import 'package:secondtask/constants/style.dart';
import 'package:secondtask/screens/chat%20screen.dart';
import 'package:secondtask/screens/packagescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        shadowColor: Colorconstant.blue,
        appBarTheme: AppBarTheme(
          
          centerTitle: true,
          
          titleTextStyle: dssans.copyWith(
            color: Colorconstant.blue,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
          elevation: 5,
          shadowColor: Colorconstant.blue,
          backgroundColor: Colorconstant.white,
          iconTheme: IconThemeData(
            color: Colorconstant.blue,
          )
        )
      ),
       home: const  PackageView(),
    );
  }
}

