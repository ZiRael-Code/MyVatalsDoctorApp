import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Medication/MedicationUsageConfirmation.dart';
import 'package:flutter_svg/svg.dart';

import '../AppointmentPaymentSummary.dart';

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
  List<bool> isSelectedList = [];

  @override
  void initState() {
    super.initState();
    isSelectedList = List<bool>.filled(1000, false);
  }
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
                  'Prescription details',
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
        body: SingleChildScrollView(
          child:
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
        Text('Current prescriptions', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0xff2E2E42)),),
        ),
          SizedBox(height: 20),
        Container(
            margin: EdgeInsets.only(bottom: 20),
          child: 
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Text(style: TextStyle(color: Colors.white),'14th June; 202 2'),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
                border: Border.all(
                  width: 1,
                  color: Colors.blue,
                )
              ),
              child: Text('24th June; 2022', style: TextStyle(color: Colors.blue),),
            )
          ],
        )
        ),
        
        Row(
          children: [
            Text('July 2022', style: TextStyle( fontSize: 16,color: Colors.blue),),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down_outlined, color: Colors.blue,)
          ],
        ),
        SizedBox(height: 8),

        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
        Row(
          children: [
            date(
                day: 'Mon',
                date: '18',
                isToday: false,
              color: Colors.redAccent
            ),
            date(
                day: 'Tue',
                date: '19',
                isToday: false
            ),

            date(
                day: 'Wed',
                date: '20',
                isToday: true
            ),
            date(
                day: 'Thur',
                date: '21',
              isToday: false
            ),
            
            date(
                day: 'Thur',
                date: '22',
              isToday: false
            ),

            date(
                day: 'Thur',
                date: '23',
              isToday: false
            ),

            date(
                day: 'Thur',
                date: '24',
              isToday: false
            ),

          ],
        )),),
        Align(
            alignment: Alignment.centerLeft,
            child: Text('Prescriptions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))
          ,SizedBox(height: 15),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8, right: 0),
              width: 115,
              decoration: BoxDecoration(
                color: Color(0xFF000000).withOpacity(0.90),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.only(left: 14, right: 10,),
              child:
              DropdownButton<String>(
                value: _selectedValue,
                hint: Text(
                  _selectedValue.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                onChanged: (newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                items: <String>['Morning', 'Afternoon', 'Evening', 'Night']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 8, right: 5),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff2E2E421A),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                    children: [
                      Text('Total amount of drugs left: ',  style: TextStyle(fontSize: 13,)),
                      Text('80%', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                    ]
                )
            )
          ],
        ),
        SizedBox(height: 25,),
        drug(
            index: 0,
            icon: 'assets/images/drug1.svg',
            name: 'Ibuprofen',
            dosage: '1 pill(s) . 2x daily'
        ),
        drug(
            index: 1,
            icon: 'assets/images/drug2.svg',
            name: 'Cough Syrup',
            dosage: '1 pill(s) . 2x daily'
        ),
        drug(
            index: 2,
            icon: 'assets/images/drug1.svg',
            name: 'Ibuprofen',
            dosage: '1 pill(s) . 2x daily'
        ),
        drug(
            index: 3,
            icon: 'assets/images/drug2.svg',
            name: 'Cough Syrup',
            dosage: '1 pill(s) . 2x daily'
        ),

       Align(alignment: Alignment.centerLeft, child:  Text('History', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
       ),
        SizedBox(height: 15),
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
    ),
    )))));
  }

  date({required String day,
    required String date,
    required bool isToday,
    color
  }) {
    return Container(
      margin: EdgeInsets.only(right: 5),
        child: Container(
            child: Stack(
            children: [

              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 7),
                width: 48,
                height: 67,
                decoration: BoxDecoration(
                  color: isToday ? Colors.blue : Color(0xffE2EDFF).withOpacity(0.30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(day, style: TextStyle(color: isToday ? Colors.white : Colors.black,),),
                    SizedBox(height: 4,),
                    Text(date, style: TextStyle(color: isToday ? Colors.white : Colors.black, fontSize: 24, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              color != null ?
              Align(
                alignment: Alignment.topCenter,
                child:
                Container(
                margin: EdgeInsets.only(left: 20),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              )
                  :
              Container(),
            ]
        )
    )
    );
  }

  drug({required String icon,
    required String name,
    required String dosage,
    required int index,
  }) {
    return  GestureDetector(

      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 0.05, color: Colors.black)
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(10),
              width: 39,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xff40FB5E).withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Align(alignment: Alignment.topCenter, child: SvgPicture.asset(icon)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(color: Color(0xff2E2E42), fontSize: 20),),
                Text(dosage, style: TextStyle(color: Color(0xff2E2E42))),
              ],
            ),
            Spacer(),
            Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelectedList[index] ? Colors.green : Color(0xffF2F2F2),
                ),
                child: Icon(Icons.check, color: isSelectedList[index] ? Colors.white : Color(0xffC2C2C2))
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          isSelectedList[index] =!isSelectedList[index];
        });
      },
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
          Text(date, style: TextStyle(fontSize: 12, color: Color(0xff000000).withOpacity(0.60)),),
          SizedBox(height: 20),
          SvgPicture.asset('assets/images/line.svg'),
          SizedBox(height: 20),
        ],
      ),
    );
  }

}