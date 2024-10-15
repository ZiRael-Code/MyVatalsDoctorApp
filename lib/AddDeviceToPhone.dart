import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AppointmentPaymentSummary.dart';

void main(){
  runApp(AppointmentPayment());
}

class AppointmentPayment extends StatefulWidget {
  const AppointmentPayment({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends  State<AppointmentPayment> {
  String? _selectedValue;
  bool deviceFound = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFE5E5E5),
                ),
                child: SvgPicture.asset('assets/images/back.svg',
                  width: 8.0,
                  height: 15,),
              ),
              Spacer(),

          Container(
            width: 35,
            height: 35,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFE5E5E5),
            ),
            child: Icon(Icons.info_outlined, color: Colors.white,),


          )
            ],
          ),
          centerTitle: true,
        ),
        body:
        Container(
            padding: EdgeInsets.only(bottom: 30, left: 15, right: 15),
            child:
        Align(
          child:
      Column(
      children: [
        SizedBox(height: 30),

        Align(child: Text("Add your device", textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.78,
          child:
        Align(child: Text("Please switch your device on and make sure your phone’s bluetooth is on.", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
        ),
        ),
        ),
        ),

        SizedBox(height: 60),
       deviceFound ? Container(
         width: 183,
         height: 183,
         decoration: BoxDecoration(
           color: Colors.white,
           shape: BoxShape.circle,
         ),
         child: SvgPicture.asset('assets/images/dev.svg'),
       )
       : SvgPicture.asset('assets/images/togglephone.svg'),
        SizedBox(height: 40),




        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Text(
              'Turn on bluetooth',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
    ))));
  }

  how_to_connect_popup(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'How to connect?',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 25,),
        numbering(
          number: "1",
          text: "Make sure the device is fully charged and turn on the device"
        ),

        numbering(
          number: "2",
          text: "Keep your phone and device within 1 meter."
        ),

        numbering(
          number: "3",
          text: "Turn on the bluetooth of the mobile phone."
        ),
      ],
    );
  }

  numbering({required String number, required String text}) {
    return Column(
      children: [ Container(
        width: 20,
        height: 20,
        margin: EdgeInsets.only(right: 7),
        child: Center(child: Text(number, style: TextStyle(color: Color(
            0xFF2E2E42)),),),
        decoration: BoxDecoration(
            color: Color(0xFFF2F2F2).withOpacity(0.5),
            shape: BoxShape.circle
        ),

      ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child:
          Text(text,),
        ),

      ],
    );
  }
}