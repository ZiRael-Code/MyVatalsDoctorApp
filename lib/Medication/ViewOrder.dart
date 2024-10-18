import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                Text(
                      'Medication',
                      style: TextStyle(
                        color: Color(0xFF2E2E42),
                        fontSize: 26, // Font size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  Spacer(),
                  Row(
                    children: [
                       SvgPicture.asset('assets/images/eletric.svg'),
                      SizedBox(width: 11,),
                      Stack(
                        children: [
                          SvgPicture.asset('assets/images/nots.svg'),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xffE40404),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 2, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  )


                ],
              ),
              centerTitle: true,
            ),
            body: Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 40,),
                SvgPicture.asset('assets/images/bikeman.svg'),
                SizedBox(height: 20,),
                Container(
                  width: 292,
                  child: Text('Your order for new medications is processing. You will be notified when it’s ready.'),
                  ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 242,
                 child:  ElevatedButton(
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
                        'Order new medications',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Row(
                  children: [
                    Text('History', style: TextStyle(
                      color: Color(0xFF2E2E42),
                      fontSize: 18, // Font size
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                    ),
                    Spacer(),

                    Text('See all', style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),),
                  ],
                ),
                SizedBox(height: 30,),
               Expanded(child: SingleChildScrollView(
                  child:
              Column(
                children: [
                  history(
                      des: "Prescription by Dr. Chima",
                      date: '11th June - 11 July 2022'
                  ),

                  history(
                      des: "Prescription by Dr. Chima",
                      date: '11th June - 11 July 2022'
                  ),

                  history(
                      des: "Prescription by Dr. Chima",
                      date: '11th June - 11 July 2022'
                  ),

                  history(
                      des: "Prescription by Dr. Chima",
                      date: '11th June - 11 July 2022'
                  ),

                ],
              )
              )
              )
              ],
            ),
            )
        )
    );
  }

  history({required String des,
    required String date}) {
    return Container(
      padding: EdgeInsets.only(left: 14,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(des, style: TextStyle(fontSize: 18, color: Colors.black)),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE2EDFF),
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                child: Text('View details', style: TextStyle(fontSize: 10, color: Colors.blue)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(date),
          SizedBox(height: 20),
          SvgPicture.asset('assets/images/line.svg'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}