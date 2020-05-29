import 'package:flutter/material.dart';
import 'package:ais/Landing_page.dart';
import 'package:ais/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My_First_Page',
      theme: ThemeData(fontFamily: "Gentium"),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin: Alignment.centerLeft,
            end:Alignment.centerRight,
            colors: [Color.fromARGB(243, 44, 79, 1),Color.fromARGB(59, 67,113 , 1)],
          ),
        ),
      child: Column(children: [
      NavBar(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
        child: LandingPage(),
      ),
      ],),
      ),
        );
    
    }
}

