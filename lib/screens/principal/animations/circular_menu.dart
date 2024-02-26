
import 'package:demo_apk_project/configs/app_routes.dart';
import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';

import 'package:flutter/material.dart';

class CircularMenu extends StatelessWidget {
  const CircularMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FabCircularMenuPlus(
      fabCloseColor: AppColors.detailColor,
      fabOpenColor: AppColors.thirdColor,
      ringColor: AppColors.thirdColor,

      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.screen1);
          },
    
          child: const Icon(Icons.home),
        ),
    
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.screen2);
          },
    
          child: const Icon(Icons.medical_information),
        ),
    
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, AppRoutes.screen3);
          },
    
          child: const Icon(Icons.medication),
        ),

        InkWell(
          onTap: () {
            
          },
    
          child: const Icon(Icons.pets),
        ),
      ],
    );
  }
}