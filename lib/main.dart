import 'package:ais/bottomLanding_page.dart';
import 'package:flutter/material.dart';
import 'package:ais/Landing_page.dart';
import 'package:ais/Navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automated Irrigation System',
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
            begin: Alignment.centerRight,
            end:Alignment.centerLeft,
            colors: [Color.fromRGBO(28, 31, 52, 1),Color.fromRGBO(6, 139, 255, 1)],
          ),
        ),

      child:  Column(children: [
        NavBar(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
          child: Column(
            children: [
              LandingPage(),

             ScreenTypeLayout(
               desktop:Padding(
                 padding: const EdgeInsets.only(top: 80.0),
                 child: BottonLandingPage(),
               ) ,
               mobile: Padding(
                 padding: const EdgeInsets.only(top: 20.0),
                 child: BottonLandingPage(),
               ),
             ) ,

            ],
          ),
        ),
        ],),


      ),
        );
    
    }
}

//[Color.fromARGB(28, 31, 52, 1),Color.fromARGB(6, 139, 255, 1)]