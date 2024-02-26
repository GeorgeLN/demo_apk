
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:demo_apk_project/screens/screens.dart';

class SlideButton extends StatelessWidget {
  
  const SlideButton({super.key}); 
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const transitionDuration = Duration(milliseconds: 700);

        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,

            pageBuilder:(context, animation, _) {
              return FadeTransition(
                opacity: animation,

                child: const ScreenTwo(),
              );
            },
          )
        );
      },

      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      ),
    );
  }
}