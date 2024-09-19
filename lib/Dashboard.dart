import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(DashboardApp());
}
Widget quickAction({
  required String iconPath,
  required Color iconBackground,
  required Color actionBackground,
  required String actionText,
}){
    return Container(
      width: 150,
      height: 51,
      padding: EdgeInsets.only(top: 12, left: 10.0, bottom: 12, right: 10),
      decoration: BoxDecoration(
        color: actionBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          children: [
            Center(
              child: Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                  color: iconBackground,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Image.asset(
                    iconPath,
                    width: 11,
                    height: 14,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Text(actionText,
              style: TextStyle(
                  fontSize: 10.0,
                  color: iconBackground
              ),),
          ],
        ),
      ),
    );
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: DashboardPage(),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 56.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/profile.svg',
                fit: BoxFit.contain,
                // width: 50.0,
                // height: 50.0,
              ),
              SizedBox(width: 10.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good morning",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Sanni Muiz",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'assets/images/notification.svg',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              quickAction(
                  iconPath: 'assets/images/icons/dashboard/electric.png',
                  iconBackground: const Color(0xFFFF618F),
                  actionBackground: const Color(0xFFF5CFDD),
                  actionText: 'Take a quick checkup'
              ),
              Spacer(),
              quickAction(
                  iconPath: 'assets/images/icons/dashboard/device.png',
                  iconBackground: const Color(0xFFA64FFE),
                  actionBackground: const Color(0xFFD3B6E8),
                  actionText: 'Request a device'
              ),
              SizedBox(height: 10)
            ],
          ),
        SizedBox(height: 25,),
        notifications(
          imagePath: 'assets/images/message.svg',
          text:  'You have a new message from Dr. Kelvin',
          context: context
        ),

        notifications(
            imagePath: 'assets/images/pill.svg',
            text:  'Your malaria drugs have been exhausted',
            context: context
          ),

        notifications(
          imagePath: 'assets/images/me.svg',
          text:  'Your malaria drugs have been exhausted',
          context: context
        ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("Vitals readings",
          style: TextStyle(fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),),
              Spacer(),
              ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent

                  ),
                child: Text('See history',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF3C8AFF),
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child:
          vital(
            themeColor: Color(0xFFFF618F),
            vitalIcon: 'assets/images/hearth.svg',
            vitalRead: '77',
            subcriptOrnot: 'bpm',
            isSubscript: true,
            vitalType: 'Heart rate (ECG)',
            dateAdded: 'Measured 10mins ago',
            vitalsReadMessage: 'NORMAL',
            vitalsReadEmoji: 'assets/images/ecgEmoji.svg'

          ),
          )
        ],
      ),
    );
  }

  notifications({
    required String imagePath,
    required BuildContext context,
    required String text}) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 74,
        padding: EdgeInsets.only(top: 12, left: 10.0, bottom: 12, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
        color: Colors.black.withOpacity(0.1),
      width: 1.0,
    ),
        ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFE2EDFF),
            ),
            width: 35,
            height: 35,
            child: Center(
              child: SvgPicture.asset(imagePath),
            ),

          ),
          SizedBox(width:10),
          Text(text,
          style: TextStyle(
            fontSize: 14,
          ),
          ),
          Spacer(),
          SvgPicture.asset('assets/images/forwardIcon.svg'),
        ],
      ),
      margin: EdgeInsets.only(bottom: 10),
    );
  }

  vital({
    required Color themeColor,
    required String vitalIcon,
    required String vitalRead,
    required String subcriptOrnot,
    required bool isSubscript,
    required String vitalType,
    required String dateAdded,
    required vitalsReadMessage,
    required vitalsReadEmoji,
  }) {
    return Stack(
      children: [
      Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: themeColor.withOpacity(0.1),
          width: 1.5,
        ),
      ),
      height: 271,
      width: 208,
      child: Column(
          children: [
            SvgPicture.asset('assets/images/backgroundVitals.svg')
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Container(
            //     width: 60,
            //     height: 60,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(50),
            //         color: themeColor
            //     ),
            //     child: Center(child: SvgPicture.asset(vitalIcon)),
            //   ),
            // ),

            // Row(
            //   children: [
            //     Text(vitalRead,
            //       style: TextStyle(
            //         fontSize: 50.0,
            //         fontWeight: FontWeight.bold,
            //         color: themeColor,
            //       ),),
            //
            //     if (isSubscript)
            //       Text(subcriptOrnot,
            //         style: TextStyle(
            //           fontSize: 8.0,
            //           color: themeColor,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       )
            //     else
            //       Text(subcriptOrnot,
            //         style: TextStyle(
            //           fontSize: 16.0,
            //           color: themeColor,
            //         ),
            //       ),
            //   ],
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     image: const DecorationImage(
            //       image: AssetImage('assets/images/backgroundVitals.png')
            //     ),
            //     color: themeColor
            //   ),
            //   child: Column(
            //     children: [
            // Text(vitalType,
            // style: const TextStyle(
            //   fontSize: 19.0,
            //   color: Colors.white,
            // ),
            // ),
            // Text(dateAdded, style: const TextStyle(
            //   fontSize: 12.0,
            //   color: Colors.white,
            // )),
            //
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white.withOpacity(0.20),
            //     borderRadius: BorderRadius.circular(24)
            //   ),
            //   padding: EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 10),
            //   child: Row(
            //     children: [
            //       SvgPicture.asset(vitalsReadEmoji),
            //       Text(vitalsReadMessage,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 12.0,
            //       ),
            //       )
            //     ],
            //   ),
            // ),
            //   ],
            // ),
            // ),
          ],
        ),
      margin: EdgeInsets.only(bottom: 20),
    ),
    ],
    );

  }
}
