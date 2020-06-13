import 'package:ais/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BottonLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("If you don't have an account create one ?",style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),),
          ),
          SizedBox(
            width: sizedBoxWidth,
          ),
          MaterialButton(
            color:Color.fromRGBO(28, 31, 52, 0.3),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            onPressed: (){},
            child: Text("Create Now",style: TextStyle(
              color:Colors.white,
              fontSize: 25.0,
            ),),
          ),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("If you don't have an account create one ?",style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),),
          ),
          SizedBox(
            width: sizedBoxWidth,
          ),
          MaterialButton(
            color:Color.fromRGBO(28, 31, 52, 0.3),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            onPressed: (){},
            child: Text("Create Now",style: TextStyle(
              color:Colors.white,
              fontSize: 25.0,
            ),),
          ),
        ],
      ),
    );
  }
}
