
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.detailColor,
                    AppColors.screenPrimaryColor,
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

                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.05, horizontal: 16),

                      child: SizedBox(
                        height: h * 0.9,
                        width: w * 0.25,
                        //color: Colors.red,

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: Image.asset(
                            'assets/images/dofus.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
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
                                      fontSize: 14,
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
                            'Crea tu equipo ideal y compite contra otros. O únete a un equipo y alcanza la gloria! 🏆',
                            textAlign: TextAlign.center,
                            
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
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