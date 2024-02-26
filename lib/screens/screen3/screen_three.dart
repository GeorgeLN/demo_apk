// ignore_for_file: camel_case_types

import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:demo_apk_project/screens/screen2/animations/opacity_tween.dart';
import 'package:demo_apk_project/screens/screen2/animations/slide_animation.dart';
import 'package:demo_apk_project/screens/screen3/widgets/slide_button.dart';
import 'package:demo_apk_project/screens/screens.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
   
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ScreenThree> {

  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var w = constraints.maxWidth;
          var h = constraints.maxHeight;
      
          return Stack(
            children: [
              const Scaffold(
                backgroundColor: Colors.white,
              ),

              Positioned(
                child: Container(
                  width: w * 0.18,
                  height: h * 0.7,
                  
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(150), bottomRight: Radius.circular(70), bottomLeft: Radius.circular(50)),
                  ),
                )
              ),

              Positioned(
                right: 0,
                bottom: 0,

                child: Container(
                  width: w * 0.18,
                  height: h * 0.7,
                  
                  decoration: const BoxDecoration(
                    //color: AppColors.homeScreenColor,
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150), topLeft: Radius.circular(70), topRight: Radius.circular(50)),
                  ),
                )
              ),

              Positioned(
                bottom: h * 0.3,
                right: w * 0.25,
                height: h * 0.2,
                width: w * 0.5,

                child: const SlideUpTween(
                  begin: Offset(-30, 60),
                  child: SlideButton(),
                ),
              ),

              Positioned(
                bottom: h * 0.04,
                child: const OpacityTween(
                  child: SlideUpTween(
                    begin: Offset(-30, 60),
                    child: IgnorePointer(
                      child: Text('Holis'),
                    )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 10),

                child: OpacityTween(
                  child: SwipeableButtonView(
                    activeColor: Colors.red,
                    buttonWidget: const Icon(Icons.arrow_forward_ios_rounded),
                    buttonText: 'Slide to play!',
                    buttontextstyle: GoogleFonts.montserrat(fontSize:20, color: Colors.black),
                  
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
              ),
            ], //Children[] - Stack
          );
        },
      ),
    );
  }
}