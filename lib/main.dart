import 'package:flutter/material.dart';
import 'package:project2/pages/otp_screen.dart';
import 'package:project2/pages/splashscreen.dart';
import 'package:project2/screens/home_screen.dart';
import 'package:project2/screens/welcomepage.dart';
//import 'package:project2/screens/welcomepage.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.pink.shade100),
      home: const OtpScreen(),
    );
  }
}