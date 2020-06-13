import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'bottomLanding_page.dart';

class LandingPage extends StatelessWidget {

List<Widget> pageChildren(double width){
  return <Widget> [
    Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome to \nAIS ",
          style: TextStyle(
            color:Colors.white,
            fontSize:40.0,
            fontWeight:FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text("This is the place from where you can remotely monitor your field",style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),),
          ),
          MaterialButton(
            color:Color.fromRGBO(28, 31, 52, 0.5),
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child: Text("Know more",style: TextStyle(
                color:Colors.white,
                fontSize: 20.0,
              ),),
            ),
          ),
        ],

    ),
     ),
    Container(
      margin: EdgeInsets.only(top:20.0),
      width: width/1,
      height: width/2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image:DecorationImage(image:AssetImage("images/1.jpg" ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
    )
//
  ];

}
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>800){
          return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width/2),
          );
        }else{
          return Column(
            children: pageChildren(constraints.biggest.width/1),
          );
        }
      },
    );
  }
}


