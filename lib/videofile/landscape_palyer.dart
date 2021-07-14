
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sppu_student_application/videofile/MainPage.dart';
import 'package:sppu_student_application/videofile/VideoPlayer_Widget.dart';


import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class LandscapePlayerPage extends StatefulWidget {
  @override
  _LandscapePlayerPageState createState() => _LandscapePlayerPageState();
}

class _LandscapePlayerPageState extends State<LandscapePlayerPage> {
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(urlLandscapeVideo)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());

    setLandscape();
  }

  @override
  void dispose() {
    controller.dispose();
    setAllOrientations();

    super.dispose();
  }

  Future setLandscape() async {
    // hide overlays statusbar
    await SystemChrome.setEnabledSystemUIOverlays([]);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    await Wakelock.enable(); // keep device awake
  }

  Future setAllOrientations() async {
    await SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

    await Wakelock.disable();
  }

  @override
  Widget build(BuildContext context) =>
     VideoPlayerWidget(controller: controller);
}