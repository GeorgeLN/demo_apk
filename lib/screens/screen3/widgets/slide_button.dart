
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:demo_apk_project/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: AppColors.detailColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),

        child: Text(
          'Soy un botón',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: MediaQuery.of(context).size.width * 0.058,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}