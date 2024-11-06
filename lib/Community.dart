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
  bool isSelected = true;
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
                  'Community',
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
        Container(
          alignment: Alignment.center,
          width: 258,
          child:
        Align(child: Text("Welcome to the community page!", textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        ),
        ),
        ),
        Container(
          alignment: Alignment.center,
          width: 304,
          child:
        Align(child: Text("This is where you can interact with doctors and other patients that have the same conditions as you do to ask questions and give your own observations.", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
        ),
        ),
        ),
        ),
        SizedBox(height: 50,),
        SvgPicture.asset('assets/images/community.svg'),


        Spacer(),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
            color: Color(0xFFE2EDFF),
            borderRadius: BorderRadius.circular(9),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: DropdownButton<String>(
            value: _selectedValue,
            hint: Text(
              'See details',
              style: TextStyle(
                color: Color(0xFF3C8AFF),
              ),
            ),
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF3C8AFF),
            ),
            icon: Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              setState(() {
                _selectedValue = newValue;
              });
            },
            items: <String>['10:00 AM', '12:00 PM', '02:00 PM', '04:00 PM']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 15,),
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
              'Done',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
    ))));
  }

  anomymity(){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Anonymity'),
          content: Column(
            children: [
              Text('You can choose to not disclose your identity while asking questions on the community.', style: TextStyle(color: Color(0xff666666)),),
              SizedBox(height: 25,),
              Text('Set display name'),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'e.g Lagbaja',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, // Height of 50 (including padding)
                    horizontal: 10.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? Colors.green : Color(0xffF2F2F2),
                      ),
                      child: Icon(Icons.check, color: isSelected ? Colors.white : Color(0xffC2C2C2))
                  ),
                  SizedBox(width: 7,),
                  Text('Always use this display name')
                ],
              )
          ]),
          actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
        },
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
              'Done',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
          ],
        );
      },
    );
  }
}