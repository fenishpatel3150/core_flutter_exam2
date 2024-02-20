import 'package:core_flutter_exam2/detail_screen.dart';
import 'package:core_flutter_exam2/home_screen.dart';
import 'package:flutter/material.dart';

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
     routes: {
        '/':(context)=>HomeScreen(),
       '/second':(context)=>detailscreen()
     },
    );
  }
}
