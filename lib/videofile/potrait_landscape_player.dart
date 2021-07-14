import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sppu_student_application/videofile/MainPage.dart';
import 'package:sppu_student_application/videofile/VideoPlayer_Widget.dart';


import 'package:video_player/video_player.dart';


class PortraitLandscapePlayerPage extends StatefulWidget {
  @override
  _PortraitLandscapePlayerPageState createState() =>
      _PortraitLandscapePlayerPageState();
}

class _PortraitLandscapePlayerPageState
    extends State<PortraitLandscapePlayerPage> {
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(urlLandscapeVideo)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(toolbarHeight: 0),
    body: VideoPlayerWidget(controller: controller),
  );
}