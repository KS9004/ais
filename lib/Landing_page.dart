import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

List<Widget> pageChildren(double width){
  return <Widget> [
    Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Automatic \nIrrigation ",
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
            color:Colors.white,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
              child: Text("Tutorials",style: TextStyle(
                color:Colors.red,
              ),),
            ),
          ),
        ],
      
    ),
     ),
     
     Container(
       margin: EdgeInsets.only(top:30.0),
       width: width,
       height: width/2,
       decoration: BoxDecoration(
         shape: BoxShape.rectangle,
         image:DecorationImage(image:AssetImage("images/1.jpg" ),
         fit: BoxFit.cover,
       ),
       borderRadius: BorderRadius.all(Radius.circular(20.0)),
      
       ),
     )

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
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}