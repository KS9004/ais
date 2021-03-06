import 'package:flutter/material.dart';
import 'package:ais/constant.dart';
import 'package:responsive_builder/responsive_builder.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DeskTopNav(),
      mobile: MobileNav(),
    );
  }
}

class DeskTopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
      child: Container(
      
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Automatic Irrigation System",style: TextStyle(
              fontWeight:FontWeight.bold,color:Colors.white,fontSize:30,

            ),
            ),
            Row(children: [
              Text("Home",style: TextStyle(color:Colors.white),),
              SizedBox(
                width: sizedBoxWidth,
              ),
              Text("About Us",style: TextStyle(color:Colors.white),),
              SizedBox(
                width: sizedBoxWidth,
              ),
              Text("Sign In",style: TextStyle(color:Colors.white),),
              SizedBox(
                width: sizedBoxWidth,
              ),
              MaterialButton(onPressed: (){},
                color: Colors.pink,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Text("Get Started",style: TextStyle(color: Colors.white),),
              ),
            ],)
          ],),
      ),
    );
  }
}


class MobileNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
      child: Container(
        child: Column(
          children: [
            Text("Automatic Irrigation Systems",style: TextStyle(
              fontWeight:FontWeight.bold,color:Colors.white,fontSize:30,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Home",style: TextStyle(color:Colors.white),),
              SizedBox(
                width: 20,
              ),
               Text("About Us",style: TextStyle(color:Colors.white),),
               SizedBox(
                width: 20,
              ),
                Text("Sign In",style: TextStyle(color:Colors.white),),
                SizedBox(
                width: 20,
              ),
               MaterialButton(onPressed: (){},
               color: Colors.pink,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
               child: Text("Get Started",style: TextStyle(color: Colors.white),), 
               ),
            ],)
          ],
        ),
      ),
    );
  }
}

//LayoutBuilder(
//builder: (context,constraints){
//if(constraints.maxWidth>1600){
//return DeskTopNav();
//}else if(constraints.maxWidth>800 && constraints.maxWidth<1600){
//return DeskTopNav();
//}else{
//return MobileNav();
//}
//},
//);