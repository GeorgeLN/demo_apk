import 'package:demo_apk_project/screens/screen1/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
   
  const ScreenOne({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: VideoPlayerWidget(videoURL: 'https://www.youtube.com/watch?v=Cj26b1CRTIg'),
      ),
    );
  }
}