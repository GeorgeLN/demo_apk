
import 'package:flutter/material.dart';

import 'package:demo_apk_project/designs/app_colors.dart';
import 'package:demo_apk_project/screens/screen3/animations/screen_animation.dart';

class ScreenTwo extends StatefulWidget {
   
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with TickerProviderStateMixin {
  
  late final ScreenAnimationController _controller;

  @override
  void initState() {
    _controller = ScreenAnimationController(
      buttonController: AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 750),
      ),
    
      contentController: AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 750),
      )
    );

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _controller.buttonController.forward();
      await _controller.buttonController.reverse();
      await _controller.contentController.forward();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
      
        return Scaffold(       
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  child: AnimatedBuilder(
                    animation: _controller.buttonController,
                    builder: (_, child) {
                      final size = _controller.buttonSizeAnimation(
                        Size(w * 0.6, h * 0.2),
                        Size(w * 1.2, h * 1.2),
                      ).value;

                      final margin = _controller.buttonMarginAnimation(h * 0.4).value;
                      
                      return Container(
                        width: size.width,
                        height: size.height,
                        margin: EdgeInsets.only(bottom: margin),

                        decoration: const BoxDecoration(
                          color: AppColors.detailColor,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ], //Children[] - Stack
          ),
        );
      }),
    );
  }
}