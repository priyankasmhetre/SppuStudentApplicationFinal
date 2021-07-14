import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sppu_student_application/Screens/HomeScreen.dart';

import 'package:sppu_student_application/pdf/buttonwidget.dart';
import 'package:sppu_student_application/pdf/page_viewr.dart';
import 'package:sppu_student_application/pdf/pdf_api.dart';
import 'package:sppu_student_application/pdf/video_api.dart';



class FetchVideo extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<FetchVideo> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:  AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white,
        ), onPressed: () {
        Navigator.of(context)
            .push(
            MaterialPageRoute(
                builder: (context) => HomeScreen())
        );


      },
      ),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 115,vertical: 80),
            child: Image.asset("assets/Images/logo.jpeg",
              height: 30,alignment: Alignment.center,),
          ),
        ],
      ),
      backgroundColor :  Color(0xcc5ac18e),),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x665ac18e),
              Color(0x995ac18e),
              Color(0xcc5ac18e),
              Color(0xff5ac18e),
            ]
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            const SizedBox(height: 16),


            ButtonWidget(
              text: 'View Video',
              onClicked: () async {
                final url = 'Video/pingle on 2020-09-28 06-29.mp4';
                final file = await videoApi.loadFirebase(url);

                if (file == null) return;
                openPDF(context, file);
              },

            ),


          ],
        ),
      ),
    ),
  );



  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
}