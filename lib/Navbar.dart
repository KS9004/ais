import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>1600){
          return DeskTopNav();
        }else if(constraints.maxWidth>800 && constraints.maxWidth<1600){
          return DeskTopNav();
        }else{
          return MobileNav();
        }
      },
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
              width: 20,
            ),
             Text("About Us",style: TextStyle(color:Colors.white),),
             SizedBox(
              width: 20,
            ),
              Text("Sign Up",style: TextStyle(color:Colors.white),),
              SizedBox(
              width: 20,
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
                Text("Sign Up",style: TextStyle(color:Colors.white),),
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