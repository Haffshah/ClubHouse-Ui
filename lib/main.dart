import 'package:clubhouse/Config/Colors.dart';
import 'package:clubhouse/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Club-House UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: ColorsPalate.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
          scaffoldBackgroundColor: ColorsPalate.background,
          appBarTheme:
              const AppBarTheme(backgroundColor: ColorsPalate.background),
          primaryColor: Colors.white,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: GoogleFonts.montserratTextTheme(),
          iconTheme: const IconThemeData(color: Color(0xff292826))),
      home: HomePage(),
    );
  }
}
