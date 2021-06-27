import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './barrel.dart';

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
        primaryColor: HexColor('#4759b6'),
        buttonColor: HexColor('#4759b6'),
        backgroundColor: HexColor('#f5f5fc'),
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            fontSize: 38,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: Colors.black87
          ),
          headline4: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.0,
            color: Colors.black87
          ),
          headline5: GoogleFonts.montserrat(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
            color: Colors.white
          ),
          headline6: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
            color: Colors.black
          ),
          overline: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
            color: Colors.black
          ),
          
        )
      ),
      home: PagesContainer(),
    );
  }
}