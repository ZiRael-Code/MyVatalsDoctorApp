import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main(){
  runApp(MainMenu());
}

class MainMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Stack(
         children: [

           SvgPicture.asset('assets/images/bloob.svg',width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, fit: BoxFit.cover,),
           Align(
             alignment: Alignment.center,
             child: Image.asset('assets/images/name.png'
             , width: MediaQuery.of(context).size.width * 0.70, height: MediaQuery.of(context).size.height,
             ),
           ),
         ],
       )
     ),
   );
  }
}