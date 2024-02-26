// ignore_for_file: camel_case_types

import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:demo_apk_project/screens/screen2/animations/slide_animation.dart';
import 'package:demo_apk_project/screens/screen3/widgets/slide_button.dart';

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
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ]
                  ),
                ),
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
                bottom: h * 0.4,
                right: w * 0.25,
                height: h * 0.2,
                width: w * 0.5,

                child: const SlideUpTween(
                  begin: Offset(-30, 60),
                  child: SlideButton(),
                ),
              ),
            ], //Children[] - Stack
          );
        },
      ),
    );
  }
}