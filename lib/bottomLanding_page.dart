import 'package:ais/constant.dart';
import 'package:flutter/material.dart';

class BottonLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text("If you don't have create one",style: TextStyle(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
            child: Text("Create Now",style: TextStyle(
              color:Colors.white,
              fontSize: 20.0,
            ),),
          ),
        ),
      ],
    );
  }
}
