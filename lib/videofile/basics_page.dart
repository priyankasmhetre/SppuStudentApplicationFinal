import 'package:flutter/material.dart';
import 'package:sppu_student_application/videofile/asset_Player.dart';
import 'package:sppu_student_application/videofile/file_palyer.dart';
import 'package:sppu_student_application/videofile/network_player.dart';
import 'package:sppu_student_application/videofile/tabbar.dart';


class BasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TabBarWidget(
    tabs: [
      Tab(icon: Icon(Icons.file_copy), text: 'Asset'),
      Tab(icon: Icon(Icons.attach_file), text: 'File'),
      Tab(icon: Icon(Icons.ondemand_video_outlined), text: 'Network'),
    ],
    children: [
      buildAssets(),
      buildFiles(),
      buildNetwork(),
    ],
  );

  Widget buildAssets() => AssetPlayerWidget();

  Widget buildFiles() => FilePlayerWidget();

  Widget buildNetwork() => NetworkPlayerWidget();
}