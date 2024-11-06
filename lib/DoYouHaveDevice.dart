import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main(){
  runApp(ConditionsState());
}

class ConditionsState extends StatefulWidget{
  @override
  _ConditionsState createState() => _ConditionsState();
}

class  _ConditionsState extends State<ConditionsState>{
  List<bool> selectedList = [];

  @override
  void initState() {
    super.initState();
    selectedList = List.generate(16, (index) => false);  // Fills the list with 10 false values
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Padding(padding:
       EdgeInsets.only(top: 45, bottom: 30),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           SizedBox(height: 65,),

           Container(
             width: 234,
             child: Text(textAlign: TextAlign.center,'Do you have a device? ',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
           ),
           SizedBox(height: 15,),
           Container(
             width: 284,
             child: Text(textAlign: TextAlign.center,'From your condition(s), there are devices that are essential for measuring your vitals to ensure proper health monitoring.',style: TextStyle(fontSize: 14,),),
           ),
           SizedBox(height: 45,),
           Container(
             alignment: Alignment.center,
             child: Stack(
               children: [
               Align(
               alignment: Alignment.center,
                child:  SvgPicture.asset('assets/images/1blob.svg',
                ),
               ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/images/dev.svg',
                    width: 204,
                    height: 132,
                  ),
                )
                 ,
               ],
             ),
           ),
           Spacer(),
           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               button(
                 icon: Icons.check,
                 text: "I have a device"
               ),
               button(
                 icon: Icons.block,
                 text: "I don’t have a device"
               ),
               button(
                 icon: Icons.access_time_rounded,
                 text: "I’ll get it later"
               ),
             ]
           ),
           SizedBox(height: 25,)
         ],
       ),
       ),
     ),
   );
  }

  button({
    required icon,
    required String text
  }) {
    return GestureDetector(
      onTap: (){

      },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 81,
            height: 81,
            decoration: BoxDecoration(
              color: Color(0xffE2EDFF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon, size: 55, weight: 4, color: Colors.blue,),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            width: 71,
            child: Text(text, textAlign: TextAlign.center,),
          )
          
        ],
      ),
    )
    );
  }

}