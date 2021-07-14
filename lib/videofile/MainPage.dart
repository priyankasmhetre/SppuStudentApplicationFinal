import 'package:flutter/material.dart';
import 'package:sppu_student_application/videofile/basics_page.dart';
import 'package:sppu_student_application/videofile/orirntationpage.dart';



final urlLandscapeVideo =
    'https://assets.mixkit.co/videos/preview/mixkit-group-of-friends-partying-happily-4640-large.mp4';
final urlPortraitVideo =
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
final urlYoutubeVideo = 'https://youtube.com/watch?v=HSAa9yi0OMA';


class MainPageVideo extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPageVideo> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    bottomNavigationBar: buildBottomBar(),
    body: buildPages(),
  );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          title: Text('Basics'),
        ),
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          title: Text('Orientation'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return BasicsPage();
      case 1:
        return OrientationPage();
      default:
        return Container();
    }
  }
}