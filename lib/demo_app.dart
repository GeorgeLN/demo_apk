
import 'package:flutter/material.dart';

import 'package:demo_apk_project/configs/app_routes.dart';
import 'package:demo_apk_project/screens/screens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DemoApp extends StatelessWidget {

  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {

    final w = MediaQuery.of(context).size.width * 0.5;
    final h = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
      designSize: Size(w, h),
      
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demo App',
        //Add Theme
      
        onGenerateRoute: (settings) {
          switch(settings.name){
            case AppRoutes.principal:
              return MaterialPageRoute(builder: (context) => const PrincipalScreen());

            case AppRoutes.screen1:
              return MaterialPageRoute(builder: (context) => const ScreenOne());

              case AppRoutes.screen2:
              return MaterialPageRoute(builder: (context) => const ScreenTwo());

            case AppRoutes.screen3:
              return MaterialPageRoute(builder: (context) => const ScreenThree());
      
            default:
              return null;
          }
        },
      
        initialRoute: '/principal',
      ),
    );
  }
}