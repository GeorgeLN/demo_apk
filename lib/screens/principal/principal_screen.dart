
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:demo_apk_project/screens/principal/animations/circular_menu.dart';
import 'package:demo_apk_project/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

   
  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {

  bool isFinished = false;
   //final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var w = constraints.maxWidth;
          var h = constraints.maxHeight;

          return Scaffold(
            body: Stack(
              children: [
                Container(
                  width: w,
                  height: h,
                  color: Colors.white,
                ),

                Lottie.network('https://lottie.host/b3e78be7-53dc-4383-a820-766a2b068769/5HZNZSihb4.json'),

                Positioned(
                  right: w * 0.15,
                  top: 10,

                  child: SizedBox(
                    width: w * 0.5,
                    height: h * 0.2,
                    child: Text(
                      'Demo APK',
                      textAlign: TextAlign.center,
                      
                      style: GoogleFonts.montserrat(
                        fontSize: 50
                      ),
                    ),
                  ),
                ),

                Padding(
                //padding: EdgeInsets.symmetric(horizontal: w / 3, vertical: h / 2.5),
                padding: EdgeInsets.only(top: h / 2.5, left: w / 2.2, right: w / 4.1),

                  child: SwipeableButtonView(
                    activeColor: AppColors.detailColor,
                    buttonWidget: const Icon(Icons.arrow_forward_ios_rounded),
                    buttonText: 'Lorem ⚕️',
                    buttontextstyle: GoogleFonts.montserrat(
                      fontSize: w * 0.025,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  
                    onWaitingProcess: () {
                      Future.delayed(const Duration(seconds: 2),
                        () => setState(() {
                          isFinished = true;
                        })
                      );
                    },
                  
                    isFinished: isFinished,
                  
                    onFinish: () async {
                      await Navigator.push(context, PageTransition(
                        type: PageTransitionType.fade,
                  
                        child: const ScreenOne(),
                      ));
                  
                      setState(() {
                        isFinished = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          
            floatingActionButton: const CircularMenu(),
          );
        },
      ),
    );
  }
}

