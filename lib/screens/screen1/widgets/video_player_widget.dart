
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  
  const VideoPlayerWidget({super.key, required this.videoURL});

  final String videoURL;

  @override
  State<VideoPlayerWidget> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<VideoPlayerWidget> {

  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializedVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset('assets/videos/Xelor.mp4');
    _initializedVideoPlayerFuture = _videoPlayerController.initialize().then(( _ ) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);

      setState(() {});
    },);
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       //backgroundColor: AppColors.screenPrimaryColor,
        body: FutureBuilder(
          future: _initializedVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              );
            }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}