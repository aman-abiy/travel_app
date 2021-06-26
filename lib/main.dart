import 'package:flutter/material.dart';
import 'package:travel_app/screens/pages_cotainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue.shade600,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: Colors.black87
          ),
          headline4: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.0,
            color: Colors.black87
          ),
          headline5: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
            color: Colors.white
          )
        )
      ),
      home: PagesContainer(),
    );
  }
}