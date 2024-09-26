import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Summary.dart';

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
                alignment: Alignment.center,
                child:
                Row(
                  children: [
                    SvgPicture.asset("assets/images/bot.svg"),
                    Column(
                      children: [
                        Row(children: [
                        Text(
                          'Vit the Chatbot',
                          style: TextStyle(
                            color: Colors.black, // Black text color
                            fontSize: 16, // Font size 16
                          ),
                        ),
                          SizedBox(width: 7,),
                          SvgPicture.asset("assets/images/verified.svg")
                        ],),
                      SizedBox(height: 8,),
                        Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF218130)
                          ),
                          width: 11,
                          height: 11,
                        ),
                          SizedBox(width: 7,),
                          Text(
                            'Active now',
                            style: TextStyle(
                              color: Color(0xff2E2E42),
                              fontSize: 16,
                            ),
                          ),
                        ],
                    ),
                      ],),
                  ],
                ),
              ),
              Spacer(),

            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("Wed 8:21 AM"),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child:
              Stack(children: [
                SvgPicture.asset("assets/images/chat.svg"),
                Container(
                child: Text(
                  "Hello, I’m Vit! 😁👋 How can I help you?",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ],),
        ),
              Align(
                alignment: Alignment.centerRight,
                child:
              Stack(
                children: [
                SvgPicture.asset("assets/images/chat1.svg"),
                Container(
                child: Text(
                  "How do I use my device?",
                  style: TextStyle(fontSize: 14),
                ),
              ),

              ],),
        ),
            ],
          ),

        ),

      ));
  }
}