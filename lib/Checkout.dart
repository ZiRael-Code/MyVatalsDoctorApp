import 'package:dotted_border/dotted_border.dart';
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
                Center(child: Text(
                  'Checkout',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                  ),
                ),
                ),
              ),
              Spacer(),

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
        Align(
          alignment: Alignment.centerLeft,
          child:
          Text('Summary', style: TextStyle(fontSize: 16)),
        ),
        SizedBox(height: 12,),
        info(type: 'Product amount', des: 'N3200'),
        SizedBox(height: 8,),
        info(type: 'Delivery fee', des: 'N1000'),
        SizedBox(height: 12,),
        SvgPicture.asset('assets/images/line.svg'),
        SizedBox(height: 12,),
        Row(
          children: [
            Text('TOTAL', style: TextStyle(color: Color(0xff666666)),),
            Spacer(),
            Text('N4,2000', style: TextStyle(fontSize: 16, color: Colors.blue,fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 12,),
        SvgPicture.asset('assets/images/line.svg'),
        SizedBox(height: 16,),

        deliverMethod(
            text: 'Not set yet',
            header: 'Delivery method'
        ),
        deliverMethod(
            text: 'Not set yet',
            header: 'Address'
        ),
        Spacer(),
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
              'Continue',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 20,)
      ],
    ),
    ))));
  }
  info({
    required String type,
    required String des}) {
    return Column(
        children: [
          Row(
            children: [
              Text(type, style: TextStyle(fontSize: 14, color: Color(0xff666666))),
              Spacer(),
              Text(des, style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 12),
        ]
    );
  }
  deliverMethod({
    required String text,
    required String header,
}) {
    return Column(children: [
     Align(
       alignment: Alignment.centerLeft,
       child:
      Text(header, style: TextStyle(fontSize: 16)),
    ),
      SizedBox(height: 20,),
      // SizedBox(height: 30,),
      // Spacer(),
      DottedBorder(
        color:  Colors.grey.withOpacity(0.70),
        radius: Radius.circular(14),
        dashPattern: [8, 6],
        borderType: BorderType.RRect,
        strokeWidth: 2,
        child: Container(
          padding: EdgeInsets.all(10),
          width: 342,
          height: 57,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.10)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not set yet.', style: TextStyle(fontSize: 14,
                  color: Colors.black.withOpacity(0.40)),),
              Spacer(),
              SizedBox(
                width: 79,
                child:   ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      'Set Now',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),


        ),
      ),
      // Spacer(),
      SizedBox(height: 20,),
    ]
    );
  }

}