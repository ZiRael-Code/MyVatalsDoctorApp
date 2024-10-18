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
                  'New prescription',
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
        SizedBox(height: 20),
        info(
          type: 'Name',
          des: '12/06/2022-Prescription'
        ),
        info(
          type: 'Prescribed by:',
          des: 'Dr. Muiz Sanni'
        ),
        info(
          type: 'Date',
          des: '12/06/2022-Prescription'
        ),
        SizedBox(height: 25,),
        drug(
          name: 'Ibuprofen',
          price: 'N700',
          qty: '1 pack'
        ),
        drug(
          name: 'Cough syrup',
          price: 'N700',
          qty: '1 bottle'
        ),
        drug(
          name: 'Paracetamol',
          price: 'N700',
          qty: '1 pack'
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text('TOTAL:'),
            Spacer(),
            Text('N3,200', style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold)),
          ],
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
              'Buy drugs',
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

  drug({
    required String name,
    required String price,
    required String qty,
}){
    return Column(
      children: [
        Row(
          children: [
            Text(name),
            Spacer(),
            Text(price),
          ],
        ),
        SizedBox(height: 10),
        Text(qty,style: TextStyle(color:  Color(0xff666666)))
      ,SizedBox(height:15),
      SvgPicture.asset('assets/images/line.svg')
        ,SizedBox(height:10),
      ],
    );
  }
}