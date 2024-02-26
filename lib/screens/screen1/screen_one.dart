
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ScreenOne extends StatelessWidget {
   
  const ScreenOne({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var w = constraints.maxWidth;
          var h = constraints.maxHeight;

          return Scaffold(
            body: Container(
              width: w,
              height: h,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor.withOpacity(0.7),
                    AppColors.detailColor,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  FadeInDown(
                    delay: const Duration(milliseconds: 800),
                    duration: const Duration(milliseconds: 800), 

                    child: Container(
                      width: w * 0.25,
                      height: h * 0.6,
                      margin: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.08),
                    
                      child: Lottie.network(
                        'https://lottie.host/a0416cd6-11ec-4f87-98fe-09464b899579/4V2NmfwX0T.json',
                        fit: BoxFit.cover,
                        
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Container(
                        width: w *0.6,
                        height: h * 0.4,
                        //color: Colors.red,
                        margin: EdgeInsets.only(top: h * 0.08, left: w * 0.02),
                        
                      
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                      
                          children: [
                            FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 800),
                      
                              child: Text(
                                    'Reprehenderit velit proident veniam Lorem dolor dolore nulla est id nostrud fugiat sint consequat ea. Mollit mollit excepteur exercitation mollit sit culpa irure adipisicing et amet incididunt fugiat. Reprehenderit ullamco velit ex non elit nisi magna fugiat. Proident cupidatat est irure deserunt ea nostrud ullamco. Consectetur nulla est ullamco tempor.',
                                    textAlign: TextAlign.center,
                              
                                    style: GoogleFonts.montserrat(
                                      //fontSize: w / 55,
                                      fontSize: w * 0.0187,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: w *0.6,
                        height: h * 0.4,
                        //color: Colors.red,
                        margin: EdgeInsets.only(top: h * 0.08, left: w * 0.02),

                        child: FadeInUp(
                          delay: const Duration(milliseconds: 900),
                          duration: const Duration(milliseconds: 1000),
                        
                          child: Text(
                            'Nostrud mollit culpa commodo consequat aliqua ea commodo laborum consequat exercitation.',
                            textAlign: TextAlign.center,
                            
                            style: GoogleFonts.montserrat(
                              fontSize: w * 0.028,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ], //Children[] - Row
              ),
            ),
          );
        },
      )
    );
  }
}